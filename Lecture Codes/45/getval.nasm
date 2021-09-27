;  COAL Video Lecture: 45
;  Programmer: Arif Butt
;  getval.nasm
;  Assemble: nasm -felf64 getval.nasm
;  Link:   Link it with the C file that calls the getval function


SECTION .text   
   global getval
   getval:
      mov rax, 54
      ret
