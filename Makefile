NAME = main

all: link execute clean

build: main.asm
	nasm -f elf64 -g -F stabs main.asm

link: build
	ld -o $(NAME) main.o

clean:
	rm *.o $(NAME)

execute:
	clear
	./$(NAME)
