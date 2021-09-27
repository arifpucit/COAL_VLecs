;  COAL Video Lecture: 36
;  div.nasm
;  Assemble: nasm -felf64 div.nasm
;  Link:     ld div.o -o div
;  usage:    gdb -q ./div -tui

section .text
global _start
_start:  

; 16-bit/8-bit division
MOV ax, 85 ; dividend
MOV bl, 2  ; divisor
DIV bl     ; AL=42h, AH=01h

; 32-bit/16-bit division
MOV dx, 0h     ;dividend (high)
MOV ax, 8005h  ;dividend (low)
MOV cx, 100h   ;divisor
DIV cx     ; AX= 0008h, DX=0005h

; 64-bit/32-bit division
MOV edx, 0h   ;dividend (high)
MOV eax, 8005h;dividend (low)
MOV ecx, 100h  ;divisor
DIV ecx  ;EAX= 0008h, EDX=0005h

; divide over flow error
MOV dx, 0060h ;dividend (high)
MOV ax, 0000h ;dividend (low)
MOV cx, 10h   ;divisor
DIV cx     ;Quotient 60000h cannot fit in AX

; exit the program gracefully
   mov rax,60
   mov rdi,0
   syscall
