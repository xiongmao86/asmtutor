; Hello World Program
; `nasm -f elf helloworld.asm`
; `ld -m elf_i386 helloworld.o -o helloworld`

SECTION .data
msg db 'Hello World!', 0Ah

SECTION .text
global _start

_start:
	mov edx, 13
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h

