// src/main.c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "hist.h"
#include "diff.h"
#include "prev.h"
#include "graph.h"
#include "build.h"
#include "repo.h"
#include "clean.h"
#include "test.h"

// Exposed globals from build.c
extern int DEBUG;
extern FILE *DBG_OUT;

static void usage(void) {
    fprintf(stderr,
        "cs <command> [args...]\n"
        "\n"
        "commands:\n"
        "  hist           show pacman history\n"
        "  diff           show install/remove file differences\n"
        "  prev           preview a pacman transaction\n"
        "  graph          generate dependency graph (dot format)\n"
        "  build          fetch/edit/build/install a PKGBUILD\n"
        "  repo-doctor    check repo layout and database health\n"
        "  clean          remove builds/sources/tmp (supports --dry-run)\n"
        "  test           spawn a temporary test shell with packages\n"
        "\n"
        "examples:\n"
        "  cs hist installed -s 20\n"
        "  cs diff htop\n"
        "  cs prev neovim\n"
        "  cs graph foot | dot -Tpng > deps.png\n"
        "  cs build cava\n"
        "\n"
        "  cs build --dry-run cava\n"
        "  cs repo-doctor\n"
        "  cs clean --dry-run\n"
        "  cs test cbonsai cowsay\n"
    );
}


int main(int argc, char **argv) {
    int shift = 0;

    // Debug mode: CS_DEBUG=1 ./cs debug.txt build cowsay
    if (getenv("CS_DEBUG")) {
        if (argc < 3) {
            fprintf(stderr, "Debug mode usage: CS_DEBUG=1 cs <debugfile> <command> [...]\n");
            return 1;
        }

        DBG_OUT = fopen(argv[1], "w");
        if (!DBG_OUT) {
            fprintf(stderr, "Failed to open debug log: %s\n", argv[1]);
            return 1;
        }

        DEBUG = 1;
        shift = 1;
    }

    if (argc - shift < 2) {
        usage();
        return 1;
    }

    const char *cmd = argv[1 + shift];

    
    if (strcmp(cmd, "hist") == 0)
        return cmd_hist(argc - 1 - shift, argv + 1 + shift);

    if (strcmp(cmd, "diff") == 0)
        return cmd_diff(argc - 1 - shift, argv + 1 + shift);

    if (strcmp(cmd, "prev") == 0)
        return cmd_prev(argc - 1 - shift, argv + 1 + shift);

    if (strcmp(cmd, "graph") == 0)
        return cmd_graph(argc - 1 - shift, argv + 1 + shift);

    if (strcmp(cmd, "build") == 0)
        return cmd_build(argc - 1 - shift, argv + 1 + shift);

    if (strcmp(cmd, "repo-doctor") == 0)
        return cmd_repo_doctor(argc - 1 - shift, argv + 1 + shift);

    if (strcmp(cmd, "clean") == 0)
        return cmd_clean(argc - 1 - shift, argv + 1 + shift);

    if (strcmp(cmd, "test") == 0)
        return cmd_test(argc - 1 - shift, argv + 1 + shift);


    usage();
    return 1;
}
