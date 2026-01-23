#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "graph.h"

int cmd_graph(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "usage: cs graph <pkg>\n");
        return 1;
    }

    const char *pkg = argv[1];

    // Check if package exists
    char checkcmd[256];
    snprintf(checkcmd, sizeof(checkcmd), "pacman -Si %s >/dev/null 2>&1", pkg);
    if (system(checkcmd) != 0) {
        fprintf(stderr, "Package '%s' not found.\n", pkg);
        return 1;
    }

    printf("digraph deps {\n");

    char cmd[256];
    snprintf(cmd, sizeof(cmd), "pactree -d 1 %s", pkg);

    FILE *fp = popen(cmd, "r");
    if (!fp) {
        perror("popen");
        return 1;
    }

    char line[256];
    int first = 1;
    char root[128] = {0};

    
    char *deps[128];
    int dep_count = 0;

    while (fgets(line, sizeof(line), fp)) {
        line[strcspn(line, "\n")] = 0;

        if (first) {
            strncpy(root, line, sizeof(root));
            printf("  \"%s\";\n", root);
            first = 0;
            continue;
        }

        // find UTF-8 "─"
        char *arrow = strstr(line, "─");
        if (!arrow) continue;

        arrow += strlen("─");

        // skip spaces
        while (*arrow == ' ') arrow++;

        // strip "provides ..." suffix
        char *prov = strstr(arrow, " provides ");
        if (prov) *prov = '\0';

        // dedupe: check if already seen
        int seen = 0;
        for (int i = 0; i < dep_count; i++) {
            if (strcmp(deps[i], arrow) == 0) {
                seen = 1;
                break;
            }
        }
        if (seen) continue;

        // store dependency
        deps[dep_count++] = strdup(arrow);

        // print edge
        printf("  \"%s\" -> \"%s\";\n", root, arrow);
    }


    pclose(fp);

    printf("}\n");
    return 0;
}
