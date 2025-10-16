CC := gcc
CFLAGS := -Wall -O6
SRCS := mystrings.c Person.c NameAge.c
OBJS := $(SRCS:.c=.o)
DEPS := boolean.h mystrings.h Person.h
TARGET := NameAge

.PHONY: all clean
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

$(OBJS): $(DEPS)

clean:
	rm -f $(OBJS)
