;  COAL Video Lecture: 32
;  datatypes.nasm
;  Assemble: nasm -felf64 datatypes.nasm
;  Link:     ld datatypes.o -o datatypes
;  usage:    gdb -q ./datatypes

SECTION .data
	msg: db "Learning is fun with Arif Butt!", 0xa
	len_msg: equ $ - msg
        EXIT_STATUS equ 0
	var1: db 0x11, 0x22  
	var2: dw 0x3344    
	var3: dd 0xaabbccdd 
	var4: dq 0xaabbccdd11223344 
	repeat_buffer: times 128 db 0xAA

SECTION .bss 
	buffer: resb 64  

SECTION .text
global _start
_start:
	mov rax, 1   
	mov rdi, 1  
	mov rsi, msg 
	mov rdx, len_msg
	syscall

	mov r8, var4
	mov r9, [var4]
	
   mov rax, 60 
   mov rdi, EXIT_STATUS
   syscall    
