# Noah French (njf5cu)

main:
	gcc -g -fno-stack-protector -m64 -fomit-frame-pointer -o grade grade.c
	nasm -f elf64 shellcode.s
	gcc -m64 -c shellcode_test.c
	gcc -m64 -no-pie shellcode.o shellcode_test.o -o shellcode_test
	gcc -o attack_shellcode attack_shellcode.c
