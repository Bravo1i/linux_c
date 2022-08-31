OBJS=main.o tool1.o tool2.o
CC=gcc
CFLAGS+=-Wall -g -c

mytool:$(OBJS)
	$(CC) $^ -o $@
%.o:%.c
	$(CC) $^ $(CFLAGS) -o $@

clean:
	rm *.o mytool -rf
