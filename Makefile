CFLAGS=-Wextra -Wall -O1 -v 

all:
	flex --header-file=scanner.h -o scanner.c scanner.flex
	gcc $(CFLAGS) scanner.c -o scanner
clean:
	rm scanner.h scanner.c 
