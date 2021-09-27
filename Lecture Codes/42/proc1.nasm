;  COAL Video Lecture: 42
;  Programmer: Arif Butt
;  proc1.nasm
;  Assemble: nasm -felf64 proc1.nasm
;  Link:     gcc proc1.o -o proc1
;  usage:    ./proc1

Section .data
   msg db "PUCIT", 0xA
   len_msg equ $ - msg

SECTION .text
   global main
   main:
      mov rax, 0x123456789abcdef0
      xor rax, rax
      call printmsg
; exit gracefully  
      mov rax, 60
      mov rdi, 0
      syscall         
printmsg:
      mov rax, 1
      mov rdi, 1 
      mov rsi, msg
      mov rdx, len_msg
      syscall  
      ret
