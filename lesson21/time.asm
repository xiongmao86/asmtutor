; Time

%include 'functions.asm'

SECTION .data
msg db  'Seconds since Jan 01 1970: ', 0h

SECTION .text
global _start

_start:

    mov eax, msg
    call sprint

    mov eax, 13
    int 80h

    call iprintLF
    call quit