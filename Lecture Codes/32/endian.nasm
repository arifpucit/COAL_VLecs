;  COAL Video Lecture: 32
;  datatypes.nasm
;  Assemble: nasm -felf64 endianness.nasm
;  Link:     ld endianness.o -o endianness
;  usage:    gdb -q ./endianness


SECTION .text
global _start
_start:

	mov rax, [var1]
	mov rbx, [var2] 

	mov rax, 60 
	mov rdi, 0
	syscall

SECTION .data
	
	var1: db 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88
	var2: db 0x88, 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11
