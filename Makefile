
objs=O0 O1 O2

CC?=gcc

all: $(objs)

O%: matacc.c
	$(CC) -$@ -o $@ $<


clean:
	$(RM) $(objs)

.PHONY: all clean
