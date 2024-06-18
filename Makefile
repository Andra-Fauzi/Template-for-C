CC = gcc
MF = src/
UF = $(MF)utils/
CFILES = $(shell find $(MF) -name '*.c')
OJ = obj/
OBJECTS = $(patsubst $(MF)%.c,$(OJ)%.o,$(CFILES))
CFLAGS = -Wno-implicit-function-declaration
OF = output/
BINARY = $(OF)app

all: $(BINARY)

$(BINARY) : $(OBJECTS)
	$(CC) -o $@ $^
$(OBJECTS): $(CFILES)
	$(CC) $(CFLAGS) -c -o $@ $^

clean:
	rm $(OBJECTS)
	echo "Removing everything but the source files"
