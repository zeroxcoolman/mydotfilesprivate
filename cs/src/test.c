// src/test.c
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/mount.h>
#include <errno.h>

#include "test.h"

static void die(const char *msg) {
    perror(msg);
    exit(1);
}

static void ensure_dir_recursive(const char *path) {
    char tmp[512];
    snprintf(tmp, sizeof(tmp), "%s", path);

    for (char *p = tmp + 1; *p; p++) {
        if (*p == '/') {
            *p = '\0';
            mkdir(tmp, 0755);
            *p = '/';
        }
    }

    mkdir(tmp, 0755);
}

static int in_namespace(void) {
    const char *v = getenv("CS_TEST_NS");
    return v && strcmp(v, "1") == 0;
}

int cmd_test(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "usage: cs test <pkg> [pkg...]\n");
        return 1;
    }

    // ------------------------------------------------------------
    // Phase 1: outer process → enter user+mount namespace
    // ------------------------------------------------------------
    if (!in_namespace()) {
        // Build argv for: unshare -m -U -r -- cs test <pkgs...>
        int extra = 5 + 2; // unshare, flags, "--", cs, "test"
        int newargc = extra + (argc - 1);
        char **nargv = calloc(newargc + 1, sizeof(char*));
        if (!nargv) {
            perror("calloc");
            return 1;
        }

        int i = 0;
        nargv[i++] = "unshare";
        nargv[i++] = "-m";
        nargv[i++] = "-U";
        nargv[i++] = "-r";
        nargv[i++] = "--";
        nargv[i++] = argv[0];   // cs binary
        nargv[i++] = "test";    // subcommand

        for (int j = 1; j < argc; j++) {
            nargv[i++] = argv[j];
        }
        nargv[i] = NULL;

        setenv("CS_TEST_NS", "1", 1);

        execvp("unshare", nargv);
        perror("execvp unshare");
        free(nargv);
        return 1;
    }

    // ------------------------------------------------------------
    // Phase 2: inner process (inside namespace)
    // ------------------------------------------------------------
    printf("==> Creating ephemeral test environment...\n");

    char root[256];
    snprintf(root, sizeof(root), "/tmp/cs-test-root-%d", getpid());
    ensure_dir_recursive(root);

    char varlib[256], cache[256], etcdir[256], usr[256], bin[256], lib[256], dev[256], proc[256], sys[256], tmpdir[256];
    snprintf(varlib, sizeof(varlib), "%s/var/lib/pacman", root);
    snprintf(cache,  sizeof(cache),  "%s/var/cache/pacman/pkg", root);
    snprintf(etcdir, sizeof(etcdir), "%s/etc", root);
    snprintf(usr,    sizeof(usr),    "%s/usr", root);
    snprintf(bin,    sizeof(bin),    "%s/bin", root);
    snprintf(lib,    sizeof(lib),    "%s/lib", root);
    snprintf(dev,    sizeof(dev),    "%s/dev", root);
    snprintf(proc,   sizeof(proc),   "%s/proc", root);
    snprintf(sys,    sizeof(sys),    "%s/sys", root);
    snprintf(tmpdir, sizeof(tmpdir), "%s/tmp", root);

    ensure_dir_recursive(varlib);
    ensure_dir_recursive(cache);
    ensure_dir_recursive(etcdir);
    ensure_dir_recursive(usr);
    ensure_dir_recursive(bin);
    ensure_dir_recursive(lib);
    ensure_dir_recursive(dev);
    ensure_dir_recursive(proc);
    ensure_dir_recursive(sys);
    ensure_dir_recursive(tmpdir);

    printf("==> Setting up bind mounts...\n");

    if (mount("/usr", usr, NULL, MS_BIND | MS_REC, NULL) != 0) die("mount /usr");
    if (mount("/bin", bin, NULL, MS_BIND | MS_REC, NULL) != 0) die("mount /bin");
    if (mount("/lib", lib, NULL, MS_BIND | MS_REC, NULL) != 0) die("mount /lib");
    if (mount("/dev", dev, NULL, MS_BIND | MS_REC, NULL) != 0) die("mount /dev");
    if (mount("/proc", proc, NULL, MS_BIND | MS_REC, NULL) != 0) die("mount /proc");
    if (mount("/sys", sys, NULL, MS_BIND | MS_REC, NULL) != 0) die("mount /sys");

    printf("==> Preparing pacman configuration...\n");

    char etcpacman[256];
    snprintf(etcpacman, sizeof(etcpacman), "%s/etc/pacman.conf", root);

    FILE *fp = fopen(etcpacman, "w");
    if (!fp) die("fopen pacman.conf");

    fprintf(fp,
        "[options]\n"
        "RootDir = %s\n"
        "DBPath = %s/var/lib/pacman/\n"
        "CacheDir = %s/var/cache/pacman/pkg/\n"
        "HoldPkg = pacman glibc\n"
        "Architecture = auto\n"
        "SigLevel = Optional TrustAll\n"
        "\n"
        "[build-repo]\n"
        "Server = file:///opt/repo\n"
        "\n"
        "[system]\n"
        "Include = /etc/pacman.d/mirrorlist\n",
        root, root, root
    );

    fclose(fp);

    printf("==> Installing packages inside test environment...\n");

    char install_cmd[2048];
    snprintf(install_cmd, sizeof(install_cmd),
        "pacman --root %s --config %s --cachedir %s/var/cache/pacman/pkg -Sy --noconfirm",
        root, etcpacman, root
    );

    for (int i = 1; i < argc; i++) {
        strcat(install_cmd, " ");
        strcat(install_cmd, argv[i]);
    }

    printf("    %s\n", install_cmd);

    if (system(install_cmd) != 0) {
        fprintf(stderr, "Package installation failed (inside test env).\n");
    }

    printf("\n==> Entering test shell (ephemeral)\n");
    printf("    Root: %s\n", root);
    printf("    Exit shell to destroy environment.\n\n");

    char shell_cmd[512];
    snprintf(shell_cmd, sizeof(shell_cmd),
        "PS1='testcs @ \\w ' chroot %s /bin/bash",
        root
    );
    system(shell_cmd);

    printf("\n==> Cleaning up test environment...\n");

    umount(sys);
    umount(proc);
    umount(dev);
    umount(lib);
    umount(bin);
    umount(usr);

    char rmcmd[512];
    snprintf(rmcmd, sizeof(rmcmd), "rm -rf %s", root);
    system(rmcmd);

    printf("==> Test environment removed.\n");

    return 0;
}
