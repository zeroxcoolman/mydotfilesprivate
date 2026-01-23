CC = gcc
CFLAGS = -Wall -Wextra -O2
SRC = src/main.c src/hist.c src/diff.c src/prev.c src/graph.c src/build.c src/repo.c src/clean.c src/test.c
OBJ = $(SRC:.c=.o)
BIN = cs
#
all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(BIN)
