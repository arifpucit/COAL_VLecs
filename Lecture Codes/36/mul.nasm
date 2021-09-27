;  COAL Video Lecture: 36
;  mul.nasm
;  Assemble: nasm -felf64 mul.nasm
;  Link:     ld mul.o -o mul
;  usage:    gdb -q ./mul -tui

section .data
   var1 db 0x10      ; multiplier
   var2 dw 0x100     ; multiplier
   var3 dd 0x10000   ; multiplier
section .text
global _start
_start:  

; 8-bit multiplication with multiplier in register
   MOV al, 0x4     ; multiplicand
   MOV bl, 0x10    ; multiplier 
   MUL bl          ; AX = 0040h CF=OF=0
; 8-bit multiplication with multiplier in variable
   MOV al, 4h     ; multiplicand
   MUL byte[var1]     ; AX = 0040h CF=OF=0
; 16-bit multiplication with multiplier in register
   MOV ax, 600h   ; multiplicand
   MOV bx, 100h   ; multiplier
   MUL bx         ; DX:AX = 0006 0000h CF=OF=1
; 16-bit multiplication with multiplier in variable
   MOV ax, 600h    ; multiplicand
   MUL word[var2]      ; DX:AX = 0006 0000h CF=OF=1
; 32-bit multiplication with multiplier in register
   MOV eax, 5454h    ; multiplicand
   MOV ebx, 10000h   ; multiplier
   MUL ebx           ; EDX:EAX = 00000000 54540000h CF=OF=0
; 32-bit multiplication with multiplier in variable
   MOV eax, 545454h  ; multiplicand
   MUL dword[var3]        ; EDX:EAX = 00000054 54540000h CF=OF=1
; exit the program gracefully
   mov rax,60
   mov rdi,0
   syscall
