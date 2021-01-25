; Include Program
; `nasm -f elf include.asm`
; `ld -m elf_i386 include.o -o include`

%include 'functions.asm'

SECTION .text
global _start

_start:
	pop ecx

	pop eax
	dec ecx
nextArg:
	cmp ecx, 0h
	jz noMoreArgs
	pop eax
	call sprintLF
	dec ecx
	jmp nextArg
noMoreArgs:
	call quit
