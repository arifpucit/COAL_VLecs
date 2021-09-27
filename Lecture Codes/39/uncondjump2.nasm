;  COAL Video Lecture: 39
;  uncondjump2.nasm
;  Assemble: nasm -felf64 -g uncondjump2.nasm
;  Link: ld uncondjump2.o -o uncondjump2
;  Usage: gdb -q uncondjump2 -tui

SECTION .data   
   msg1 db "Study COAL", 0xA
   len_msg1  equ  $ - msg1   
   msg2 db "Play Cricket", 0xA
   len_msg2  equ  $ - msg2     

SECTION .text   
   global _start   
_start:
     JMP _play
_study:
      mov rax, 1 
      mov rdi, 1
      mov rsi, msg1
      mov rdx, len_msg1
      syscall
      JMP _end  
_play:      
      mov rax, 1 
      mov rdi, 1
      mov rsi, msg2
      mov rdx, len_msg2
      syscall
      JMP _study
_end:      
      mov rax, 60
      mov rdi, 0
      syscall
