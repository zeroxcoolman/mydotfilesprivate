// src/build.c

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#include <dirent.h>

#define BUILDDIR   "/opt/repo/builds"
#define PKGDEST    "/opt/repo/packages"
#define SOURCEDIR  "/opt/repo/sources"

int DEBUG = 0;
FILE *DBG_OUT = NULL;

#define DBG(fmt, ...) \
    do { if (DEBUG && DBG_OUT) fprintf(DBG_OUT, "[DEBUG] " fmt "\n", ##__VA_ARGS__); } while (0)

// ------------------------------------------------------------
// Helpers
// ------------------------------------------------------------

static int dir_exists(const char *path) {
    struct stat st;
    return stat(path, &st) == 0 && S_ISDIR(st.st_mode);
}

// Detect if pkg is from an *Artix* repo, not Arch
static int artix_pkg_exists(const char *pkg) {
    char cmd[512];
    snprintf(cmd, sizeof(cmd),
        "pacman -Si %s 2>/dev/null | grep '^Repository' | grep -qE '^(system|world|galaxy)$'",
        pkg
    );

    DBG("----- Artix detection for '%s' -----", pkg);
    DBG("Command: %s", cmd);

    int result = system(cmd);
    DBG("Exit code: %d", result);
    DBG("Matched Artix repo: %s", result == 0 ? "yes" : "no");

    return result == 0;
}

// Detect if pkg exists in AUR
static int aur_pkg_exists(const char *pkg) {
    char cmd[512];
    snprintf(cmd, sizeof(cmd),
        "git ls-remote https://aur.archlinux.org/%s.git >/dev/null 2>&1",
        pkg
    );

    DBG("----- AUR detection for '%s' -----", pkg);
    DBG("Command: %s", cmd);

    int result = system(cmd);
    DBG("Exit code: %d", result);

    return result == 0;
}

static int extract_pkgname(const char *pkgdir, char *out, size_t outlen) {
    char path[512];
    snprintf(path, sizeof(path), "%s/PKGBUILD", pkgdir);

    FILE *fp = fopen(path, "r");
    if (!fp) return 0;

    char line[256];
    while (fgets(line, sizeof(line), fp)) {
        if (strncmp(line, "pkgname=", 8) == 0) {
            char *eq = strchr(line, '=');
            if (!eq) break;
            eq++;
            eq[strcspn(eq, "\n")] = 0;
            strncpy(out, eq, outlen);
            fclose(fp);
            return 1;
        }
    }

    fclose(fp);
    return 0;
}

static int find_built_package(const char *pkgdir, char *out, size_t outlen) {
    DIR *d = opendir(pkgdir);
    if (!d) return 0;

    struct dirent *ent;
    while ((ent = readdir(d)) != NULL) {
        if (strstr(ent->d_name, ".pkg.tar.zst")) {
            snprintf(out, outlen, "%s/%s", pkgdir, ent->d_name);
            closedir(d);
            return 1;
        }
    }

    closedir(d);
    return 0;
}

// ------------------------------------------------------------
// Rollback helpers
// ------------------------------------------------------------

static void rollback_build(const char *pkgname, int keep_build_dir) {
    char cmd[1024];

    snprintf(cmd, sizeof(cmd), "rm -f %s/%s-*.pkg.tar.zst", PKGDEST, pkgname);
    system(cmd);

    snprintf(cmd, sizeof(cmd), "rm -rf %s/%s", SOURCEDIR, pkgname);
    system(cmd);

    if (!keep_build_dir) {
        snprintf(cmd, sizeof(cmd), "rm -rf %s/%s", BUILDDIR, pkgname);
        system(cmd);
    }
}

static int fatal_error(const char *pkgname, const char *msg) {
    fprintf(stderr, "%s\n", msg);
    printf("Keep partial build directory? (y/N): ");

    char ans[8];
    if (!fgets(ans, sizeof(ans), stdin)) {
        rollback_build(pkgname, 0);
        return 1;
    }

    if (ans[0] == 'y' || ans[0] == 'Y') {
        rollback_build(pkgname, 1);
        printf("Partial build kept at %s/%s\n", BUILDDIR, pkgname);
    } else {
        rollback_build(pkgname, 0);
        printf("All traces removed for %s.\n", pkgname);
    }

    return 1;
}

// ------------------------------------------------------------
// Main build command
// ------------------------------------------------------------

int cmd_build(int argc, char **argv) {

    if (DEBUG)
        DBG("Debug mode enabled");

    if (argc < 2) {
        fprintf(stderr, "usage: cs build [--dry-run] <pkg>\n");
        return 1;
    }

    int dry_run = 0;
    int argi = 1;

    if (strcmp(argv[argi], "--dry-run") == 0) {
        dry_run = 1;
        argi++;
        if (argc - argi < 1) {
            fprintf(stderr, "usage: cs build [--dry-run] <pkg>\n");
            return 1;
        }
    }

    const char *input = argv[argi];


    char pkgdir[512];
    snprintf(pkgdir, sizeof(pkgdir), "%s/%s", BUILDDIR, input);

    mkdir(BUILDDIR, 0755);

    // ------------------------------------------------------------
    // 1. Detect source (Artix or AUR)
    // ------------------------------------------------------------
    int is_artix = artix_pkg_exists(input);
    int is_aur   = 0;

    if (!is_artix)
        is_aur = aur_pkg_exists(input);

    DBG("----- Final classification -----");
    DBG("is_artix = %d", is_artix);
    DBG("is_aur   = %d", is_aur);

    if (!is_artix && !is_aur) {
        fprintf(stderr, "Package '%s' not found in Artix repos or AUR.\n", input);
        return 1;
    }

    // ------------------------------------------------------------
    // 2. Clone or update
    // ------------------------------------------------------------
    if (dir_exists(pkgdir)) {
        printf("Updating existing repo at %s...\n", pkgdir);

        char cmd[1024];
        snprintf(cmd, sizeof(cmd),
            "cd %s && git pull --ff-only",
            pkgdir
        );

        DBG("Update command: %s", cmd);

        if (system(cmd) != 0) {
            return fatal_error(input, "Failed to update existing repo.");
        }
    } else {
        char cmd[1024];

        if (is_artix) {
            printf("Cloning from Artix mirror...\n");
            snprintf(cmd, sizeof(cmd),
                "git clone https://gitea.artixlinux.org/packages/%s.git %s",
                input, pkgdir
            );
        } else {
            printf("Cloning from AUR...\n");
            snprintf(cmd, sizeof(cmd),
                "git clone https://aur.archlinux.org/%s.git %s",
                input, pkgdir
            );
        }

        DBG("Clone command: %s", cmd);

        if (system(cmd) != 0) {
            return fatal_error(input, "Failed to clone package.");
        }
    }

    // ------------------------------------------------------------
    // 3. Extract pkgname
    // ------------------------------------------------------------
    char pkgname[128] = {0};

    if (!extract_pkgname(pkgdir, pkgname, sizeof(pkgname))) {
        return fatal_error(input, "Could not determine pkgname from PKGBUILD.");
    }

    printf("Detected pkgname: %s\n", pkgname);

    // ------------------------------------------------------------
    // 4. Open PKGBUILD
    // ------------------------------------------------------------
    char editor_cmd[1024];
    snprintf(editor_cmd, sizeof(editor_cmd), "%s %s/PKGBUILD",
             getenv("EDITOR") ? getenv("EDITOR") : "nano",
             pkgdir);

    DBG("Editor command: %s", editor_cmd);

    system(editor_cmd);

    // ------------------------------------------------------------
    // 5. AUR → manual fish shell
    // ------------------------------------------------------------
    if (is_aur) {
        printf("AUR package detected.\n");
        printf("Dropping you into the build directory...\n");

        chdir(pkgdir);
        execl("/usr/bin/fish", "fish", NULL);

        perror("execl failed");
        return 1;
    }

    // ------------------------------------------------------------
    // 6. Artix → automated makepkg
    // ------------------------------------------------------------
   
    printf("Running makepkg -s...\n");

    // Lint PKGBUILD (best-effort)
    char lint_cmd[1024];
    snprintf(lint_cmd, sizeof(lint_cmd),
            "cd %s && command -v namcap >/dev/null 2>&1 && namcap PKGBUILD || true",
            pkgdir);
    DBG("Lint command: %s", lint_cmd);

    if (!dry_run) {
        system(lint_cmd);
    } else {
        printf("[DRY RUN] Would lint PKGBUILD with namcap.\n");
    }

    char build_cmd[1024];
    snprintf(build_cmd, sizeof(build_cmd),
            "cd %s && makepkg -s",
            pkgdir
    );

    DBG("Build command: %s", build_cmd);

    if (dry_run) {
        printf("[DRY RUN] Would run: %s\n", build_cmd);
        printf("[DRY RUN] Skipping build, repo-add, and install.\n");
        return 0;
    }

    if (system(build_cmd) != 0) {
        return fatal_error(pkgname, "Build failed (makepkg -s).");
    }


    // ------------------------------------------------------------
    // 7. Find built package
    // ------------------------------------------------------------
    char builtpkg[512] = {0};

    if (!find_built_package(pkgdir, builtpkg, sizeof(builtpkg))) {
        return fatal_error(pkgname, "No built package found.");
    }

    printf("Built package: %s\n", builtpkg);

    // ------------------------------------------------------------
    // 8. Add to repo
    // ------------------------------------------------------------
    printf("Add this package to your repo? (y/N): ");
    char ans1[8];
    if (fgets(ans1, sizeof(ans1), stdin) &&
        (ans1[0] == 'y' || ans1[0] == 'Y')) {

        char movecmd[1024];
        snprintf(movecmd, sizeof(movecmd),
            "mv %s %s/",
            builtpkg, PKGDEST
        );

        DBG("Move command: %s", movecmd);

        if (system(movecmd) != 0) {
            return fatal_error(pkgname, "Failed to move built package into repo directory.");
        }

        char repocmd[1024];
        snprintf(repocmd, sizeof(repocmd),
            "repo-add %s/build-repo.db.tar.gz %s/*.pkg.tar.zst",
            PKGDEST, PKGDEST
        );

        DBG("Repo-add command: %s", repocmd);

        if (system(repocmd) != 0) {
            return fatal_error(pkgname, "repo-add failed.");
        }
    }

    // ------------------------------------------------------------
    // 9. Install
    // ------------------------------------------------------------
    printf("Install this package? (y/N): ");
    char ans2[8];
    if (fgets(ans2, sizeof(ans2), stdin) &&
        (ans2[0] == 'y' || ans2[0] == 'Y')) {

        char install_cmd[512];
        snprintf(install_cmd, sizeof(install_cmd),
            "sudo pacman -S %s",
            pkgname
        );

        DBG("Install command: %s", install_cmd);

        system(install_cmd);
    }

    return 0;
}
