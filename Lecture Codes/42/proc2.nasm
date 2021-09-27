;  COAL Video Lecture: 42
;  Programmer: Arif Butt
;  proc2.nasm
;  Assemble: nasm -felf64 proc2.nasm
;  Link:     gcc proc2.o -o proc2
;  usage:    ./proc2

Section .data
   msg db "PUCIT", 0xA
   len_msg equ $ - msg

SECTION .text
   global main
   main:
      mov rcx, 0x10
      repeat:
         call printmsg
         loop repeat
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
