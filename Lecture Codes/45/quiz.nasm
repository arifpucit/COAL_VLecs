;  COAL Video Lecture: 45
;  Programmer: Arif Butt
;  quiz.nasm
;  Assemble: nasm -felf64 quiz.nasm
;  Link:     gcc --static quiz.o
;  usage:    ./a.out

SECTION .text   
   global main
   extern putchar
main:
   mov rcx, 26
   mov rdi, 65
   repeat:
      push rcx
      push rdi
      call putchar
      pop rdi
      pop rcx
      inc rdi
      loop repeat
   mov rdi, 10
   call putchar
   mov rax, 0
   ret
