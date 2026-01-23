#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "prev.h"

static int pkg_exists(const char *pkg) {
    char cmd[256];
    snprintf(cmd, sizeof(cmd), "pacman -Si %s >/dev/null 2>&1", pkg);
    return system(cmd) == 0;
}

static int pkg_installed(const char *pkg) {
    char cmd[256];
    snprintf(cmd, sizeof(cmd), "pacman -Q %s >/dev/null 2>&1", pkg);
    return system(cmd) == 0;
}

int cmd_prev(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "usage: cs prev <pkg>\n");
        return 1;
    }

    const char *pkg = argv[1];

    if (!pkg_exists(pkg)) {
        fprintf(stderr, "Package '%s' not found in repositories.\n", pkg);
        return 1;
    }

    printf("Previewing transaction for: %s\n\n", pkg);

    if (pkg_installed(pkg)) {
        printf("Status: already installed\n\n");
    } else {
        printf("Status: not installed\n\n");
    }

    printf("Dependencies:\n");
    char cmd[256];
    snprintf(cmd, sizeof(cmd), "pacman -Si %s | grep Depends", pkg);
    system(cmd);

    printf("\nDownload size:\n");
    snprintf(cmd, sizeof(cmd), "pacman -Si %s | grep \"Download Size\"", pkg);
    system(cmd);

    printf("\nInstalled size:\n");
    snprintf(cmd, sizeof(cmd), "pacman -Si %s | grep \"Installed Size\"", pkg);
    system(cmd);

    printf("\nPackages that will be installed/upgraded:\n");
    snprintf(cmd, sizeof(cmd), "pacman -S --print-format \"%%n %%v\" %s 2>/dev/null", pkg);
    system(cmd);

    return 0;
}
