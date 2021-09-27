;  COAL Video Lecture: 43
;  Programmer: Arif Butt
;  proc1.nasm
;  Assemble: nasm -felf64 proc1.nasm
;  Link:     gcc proc1.o -o proc1
;  usage:    ./proc1

SECTION .text   
   global main
main:
; the code of main comes here
  mov rax, 54
  ret
