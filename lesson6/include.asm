; Include Program
; `nasm -f elf include.asm`
; `ld -m elf_i386 include.o -o include`

%include 'functions.asm'

SECTION .data
msg1 db 'Hello, brave new world!', 0Ah, 0h
msg2 db 'This is how we recycle in NASM.', 0Ah, 0h

SECTION .text
global _start

_start:
	mov eax, msg1
	call sprint

	mov eax, msg2
	call sprint

	call quit
