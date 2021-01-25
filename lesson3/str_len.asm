; String Length Program
; `nasm -f elf str_len.asm`
; `ld -m elf_i386 str_len.o -o str_len`

SECTION .data
msg db 'Hello, Brave New World', 0Ah

SECTION .text
global _start

_start:
	mov ebx, msg
	mov eax, ebx

nextchar:
	cmp byte [eax], 0
	jz finished
	inc eax
	jmp nextchar

finished:
	sub eax, ebx


print_str:
	mov edx, eax
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h

	mov ebx, 0
	mov eax, 1
	int 80h

