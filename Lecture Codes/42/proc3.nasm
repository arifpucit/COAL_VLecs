;  COAL Video Lecture: 42
;  Programmer: Arif Butt
;  proc3.nasm
;  Assemble: nasm -felf64 proc3.nasm
;  Link:     gcc proc3.o -o proc3
;  usage:    ./proc3

Section .data
   msg db "PUCIT", 0xA
   len_msg equ $ - msg

SECTION .text
   global main
   main:
      mov rcx, 0x10
      repeat:
         push rcx
         call printmsg
         pop rcx
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
