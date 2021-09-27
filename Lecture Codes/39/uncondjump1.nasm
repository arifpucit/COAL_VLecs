;  COAL Video Lecture: 39
;  uncondjump1.nasm
;  Assemble: nasm -felf64 -g uncondjump1.nasm
;  Link: ld uncondjump1.o -o uncondjump1
;  Usage: gdb -q uncondjump1 -tui

SECTION .data   
   msg1 db "Study COAL", 0xA
   len_msg1  equ  $ - msg1   
   msg2 db "Play Cricket", 0xA
   len_msg2  equ  $ - msg2     

SECTION .text   
   global _start   
_start:  
      mov rax, 1 
      mov rdi, 1
      mov rsi, msg1
      mov rdx, len_msg1
      syscall
      JMP _end  
      mov rax, 1 
      mov rdi, 1
      mov rsi, msg2
      mov rdx, len_msg2
      syscall
_end:      
      mov rax, 60
      mov rdi, 0
      syscall
