all:
	nasm -g -f elf32 helpers.asm -o helpers.o
	nasm -g -f elf32 main.asm -o main.o
	gcc -g -m32 main.o helpers.o -o palindrome

