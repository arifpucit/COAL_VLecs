;  COAL Video Lecture: 36
;  idiv.nasm
;  Assemble: nasm -felf64 idiv.nasm
;  Link:     ld idiv.o -o idiv
;  usage:    gdb -q ./idiv -tui

section .text
global _start
_start:  

; 16-bit/8-bit signed division
MOV al, -48 ; dividend al=d0h
CBW ; extend sign bit of al into ah
MOV bl, 5  ; divisor 
IDIV bl ; AL=f7h or -9, AH=fdh -3

; 32-bit/16-bit signed division
MOV rax, 0
MOV ax, -48 ; dividend  ax=ffd0h
CWD  ;extend sign bit of ax into dx (dx=ffffh)
MOV bx, 5  ; divisor    
IDIV bx ; AX=fff7h or -9, DX=fffdh -3

; 64-bit/32-bit signed division
MOV rax, 0
MOV eax, -48 ; dividend eax=ffffffd0h
CDQ ; extend sign bit of eax into edx (edx=ffffffffh)
MOV ebx, 5  ; divisor 
IDIV ebx  ; EAX=fffffff7h or -9, EDX=fffffffdh -3

; exit the program gracefully
   mov rax,60
   mov rdi,0
   syscall
