CC=cc
CFLAGS= -std=c11 -Wall -Wextra -pedantic -O0 -g -Wno-unused-variable -Wno-unused-parameter

all: sumador

OBJS= main.o funcs_c.o funcs_asm.o

sumador: $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

main.o: main.c funcs.h
	$(CC) $(CFLAGS) -c $< -o $@

funcs_c.o: funcs_c.c funcs.h
	$(CC) $(CFLAGS) -c $< -o $@

funcs_asm.o: funcs_asm.s funcs.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o
	rm -f sumador