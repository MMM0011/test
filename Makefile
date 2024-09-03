CC = gcc
CFLAGS = -I./src
BINDIR = /usr/local/bin
INCLUDEDIR = /usr/local/include
TARGET = my_program

SRCS = src/main.c src/func.c
OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

install: $(TARGET)
	install -m 0755 $(TARGET) $(BINDIR)
	install -m 0644 src/header.h $(INCLUDEDIR)

clean:
	rm -f $(OBJS) $(TARGET)

clean-all: clean
	rm -f $(BINDIR)/$(TARGET)
	rm -f $(INCLUDEDIR)/header.h

.PHONY: all clean clean-all install
