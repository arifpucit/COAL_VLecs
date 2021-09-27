;  COAL Video Lecture: 29
;  Programmer: Arif Butt
;  first.nasm
;  Assemble: nasm -felf64 first.nasm
;  Link:     ld first.o -o myexe
;  usage:    ./myexe

Section .data
   msg db "Learning is fun with Arif", 0xA
   EXIT_STATUS equ 54

Section .bss
;nothing here

SECTION .text
   global _start
   _start:
;display a message on stdout
      Mov Rax,1
      mov rdi,1 
      mov rsi,msg
      mov rdx,26
      Syscall    
;exit the program
      mov rax,60
      mov rdi,EXIT_STATUS
      syscall         
