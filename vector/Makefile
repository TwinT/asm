NASM:=nasm
NASMFLAGS:=-Wall -f elf64 -g -Wall

TARGET:=vector

SRCS:= vector.asm

OBJS=$(SRCS:.asm=.o)

all: $(TARGET)

%.o: %.asm 
	$(NASM) $(NASMFLAGS) $< -o $@

$(TARGET): $(OBJS)
	ld -o $@ $^

clean:
	rm -f *.o
	rm -f $(TARGET)