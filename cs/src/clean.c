// src/clean.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <sys/stat.h>
#include <unistd.h>
#include "clean.h"

#define BUILDDIR   "/opt/repo/builds"
#define SOURCEDIR  "/opt/repo/sources"
#define TMPPKGDIR  "/tmp/makepkg"

static int dir_exists(const char *path) {
    struct stat st;
    return stat(path, &st) == 0 && S_ISDIR(st.st_mode);
}

static void rm_rf(const char *path) {
    char cmd[512];
    snprintf(cmd, sizeof(cmd), "rm -rf '%s'", path);
    system(cmd);
}

int cmd_clean(int argc, char **argv) {
    int dry_run = 0;

    if (argc > 1 && strcmp(argv[1], "--dry-run") == 0) {
        dry_run = 1;
    }

    printf("==> cs clean (%s)\n\n", dry_run ? "dry-run" : "real");

    const char *targets[] = {
        BUILDDIR,
        SOURCEDIR,
        TMPPKGDIR,
        NULL
    };

    for (int i = 0; targets[i]; i++) {
        const char *t = targets[i];
        if (dir_exists(t)) {
            printf("[CLEAN] %s\n", t);
            if (!dry_run) {
                rm_rf(t);
            }
        } else {
            printf("[SKIP]  %s (not found)\n", t);
        }
    }

    printf("\n==> cs clean done.\n");
    return 0;
}
