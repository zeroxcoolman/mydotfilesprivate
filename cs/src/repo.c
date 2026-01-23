// src/repo.c
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <dirent.h>
#include <string.h>
#include "repo.h"

#define REPO_ROOT   "/opt/repo"
#define REPO_ARCH   "x86_64"
#define REPO_DBNAME "build-repo.db.tar.gz"

static int dir_exists(const char *path) {
    struct stat st;
    return stat(path, &st) == 0 && S_ISDIR(st.st_mode);
}

static int file_exists(const char *path) {
    struct stat st;
    return stat(path, &st) == 0 && S_ISREG(st.st_mode);
}

int cmd_repo_doctor(int argc, char **argv) {
    (void)argc;
    (void)argv;

    char archdir[512];
    snprintf(archdir, sizeof(archdir), "%s/%s", REPO_ROOT, REPO_ARCH);

    printf("==> Repo doctor\n\n");

    // Root
    if (dir_exists(REPO_ROOT)) {
        printf("[OK] Repo root: %s\n", REPO_ROOT);
    } else {
        printf("[ERR] Repo root missing: %s\n", REPO_ROOT);
        return 1;
    }

    // Arch dir
    if (dir_exists(archdir)) {
        printf("[OK] Arch directory: %s\n", archdir);
    } else {
        printf("[ERR] Arch directory missing: %s\n", archdir);
        return 1;
    }

    // DB
    char dbpath[512];
    snprintf(dbpath, sizeof(dbpath), "%s/%s", archdir, REPO_DBNAME);

    if (file_exists(dbpath)) {
        printf("[OK] Repo DB: %s\n", dbpath);
    } else {
        printf("[WARN] Repo DB missing: %s\n", dbpath);
        printf("       You can create it with:\n");
        printf("         cd %s && repo-add %s *.pkg.tar.zst\n", archdir, REPO_DBNAME);
    }

    // List packages
    printf("\n==> Packages in repo:\n");
    DIR *d = opendir(archdir);
    if (!d) {
        perror("opendir");
        return 1;
    }

    struct dirent *ent;
    int count = 0;
    while ((ent = readdir(d)) != NULL) {
        if (strstr(ent->d_name, ".pkg.tar.zst")) {
            printf("  %s\n", ent->d_name);
            count++;
        }
    }
    closedir(d);

    if (count == 0) {
        printf("  (none)\n");
    }

    printf("\n==> Repo doctor finished.\n");
    return 0;
}
