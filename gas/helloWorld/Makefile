AS:=as
ASFLAGS:= -a

TARGET:=helloWorld

SRCS:= helloWorld.s

OBJS=$(SRCS:.s=.o)

all: $(TARGET)

%.o: %.s 
	$(AS) $(ASFLAGS) $< -o $@

$(TARGET): $(OBJS)
	ld -o $@ $^

clean:
	rm -f *.o
	rm -f sumador