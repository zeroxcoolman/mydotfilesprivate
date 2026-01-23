// src/hist.c
#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "hist.h"

static int match_action(const char *line, const char *mode) {
    if (strcmp(mode, "all") == 0) return 1;
    if (strcmp(mode, "installed") == 0) return strstr(line, "installed") != NULL;
    if (strcmp(mode, "removed") == 0)   return strstr(line, "removed") != NULL;
    if (strcmp(mode, "upgraded") == 0)  return strstr(line, "upgraded") != NULL;
    return 0;
}

int cmd_hist(int argc, char **argv) {
    const char *mode = "all";
    int limit = -1;  // unlimited by default

    // parse args
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "-s") == 0 && i + 1 < argc) {
            limit = atoi(argv[++i]);
        } else {
            mode = argv[i];
        }
    }

    FILE *f = fopen("/var/log/pacman.log", "r");
    if (!f) {
        perror("fopen /var/log/pacman.log");
        return 1;
    }

    // dynamic array of matching lines
    char **lines = NULL;
    size_t count = 0;

    char *line = NULL;
    size_t len = 0;

    while (getline(&line, &len, f) != -1) {
        if (match_action(line, mode)) {
            lines = realloc(lines, sizeof(char*) * (count + 1));
            lines[count++] = strdup(line);
        }
    }

    fclose(f);
    free(line);

    // determine start index
    size_t start = 0;
    if (limit > 0 && (size_t)limit < count) {
        start = count - limit;
    }

    // print selected lines
    for (size_t i = start; i < count; i++) {
        fputs(lines[i], stdout);
        free(lines[i]);
    }

    free(lines);
    return 0;
}
