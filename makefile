all:
	yasm -f elf64 -o assem.o assignment1.asm
	gcc -no-pie -o assem assem.o
	./assem
