; Execute

%include 'functions.asm'

SECTION .data
; command db '/bin/echo', 0h
; arg1 db 'Hello World!', 0h
; command db '/bin/ls', 0h
; arg1 db '-l', 0h
command db '/bin/sleep', 0h
arg1 db '5', 0h
arguments dd command
          dd arg1
          dd 0h
environment dd 0h

SECTION .text
global _start

_start:
    mov edx, environment
    mov ecx, arguments
    mov ebx, command
    mov eax, 11
    int 80h

    call quit