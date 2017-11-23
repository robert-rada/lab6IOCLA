%include "io.inc"
extern printf

section .data
    before_format db "before %s", 13, 10, 0
    after_format db  "after %s", 13, 10, 0
    mystring db "ab`,Cde  Fghz{...Ij", 0

section .text
global CMAIN

toupper:
    push ebp
    mov ebp, esp

    mov esi, [ebp+8]
    mov edi, esi
    
    jmp LOOP_CONDITION
LOOP:
    cmp al, 'a'
    jl WRITE
    cmp al, 'z'
    jg WRITE
    xor al, 0x20
WRITE:
    stosb
LOOP_CONDITION:
    lodsb
    test al, al
    jnz LOOP

    leave
    ret

CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp

    push mystring
    push before_format
    call printf
    add esp, 8

    push mystring
    call toupper
    add esp, 4

    push mystring
    push after_format
    call printf
    add esp, 8

    leave
    ret
