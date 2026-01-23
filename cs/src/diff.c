#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "diff.h"

static int is_installed(const char *pkg) {
    char cmd[256];
    snprintf(cmd, sizeof(cmd), "pacman -Q %s >/dev/null 2>&1", pkg);
    return system(cmd) == 0;
}

int cmd_diff(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "usage: cs diff <pkg>\n");
        return 1;
    }

    const char *pkg = argv[1];

    if (is_installed(pkg)) {
        printf("Package '%s' is installed.\n", pkg);
        printf("Files that would be removed:\n\n");

        char cmd[256];
        snprintf(cmd, sizeof(cmd), "pacman -Ql %s | awk '{print $2}'", pkg);
        system(cmd);
        return 0;
    }

    printf("Package '%s' is NOT installed.\n", pkg);
    printf("Files that would be installed:\n\n");

    // get package URL
    char url[512];
    snprintf(url, sizeof(url), "pacman -Sp %s | tail -n 1", pkg);

    FILE *fp = popen(url, "r");
    if (!fp) {
        perror("popen");
        return 1;
    }

    char pkgurl[512];
    if (!fgets(pkgurl, sizeof(pkgurl), fp)) {
        fprintf(stderr, "could not get package URL\n");
        pclose(fp);
        return 1;
    }
    pclose(fp);

    pkgurl[strcspn(pkgurl, "\n")] = 0;

    // download package
    system("mkdir -p /tmp/cs_pkg");
    char dlcmd[1024];
    snprintf(dlcmd, sizeof(dlcmd), "curl -L -o /tmp/cs_pkg/pkg.pkg.tar.zst '%s'", pkgurl);
    system(dlcmd);

    // list files
    system("bsdtar -tf /tmp/cs_pkg/pkg.pkg.tar.zst");

    return 0;
}
