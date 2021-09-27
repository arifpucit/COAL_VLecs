;  COAL Video Lecture: 43
;  Programmer: Arif Butt
;  proc3.nasm
;  Assemble: nasm -felf64 proc3.nasm
;  Link:     gcc proc3.o -o proc3
;  usage:    ./proc3

SECTION .text   
   global main
main:
   mov rdi, 0x12481248ffff0000
   call countOnes
   ret

countOnes:
   mov rcx, 64
   xor rax, rax ; sum of 1 bits
   _repeat:
      mov rsi, rdi
      and rsi, 1
      add rax, rsi
      sar rdi, 1
      loop _repeat
   ret 
