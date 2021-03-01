; Create

%include 'functions.asm'

SECTION .data
filename    db  'readme.txt',

SECTION .text
global _start

_start:

    mov ecx, 0777
    mov ebx, filename
    mov eax, 8
    int 80h

    call quit