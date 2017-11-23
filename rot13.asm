%include "io.inc"

section .data
text db "Hello, world!", 0, "ZzbhaMD,fd|d}P{(", 0, "test", 0, "???!!ABCDzxvw", 0
length equ $-text

section .text
global CMAIN
CMAIN:
    mov ebp, esp
    
    mov esi, text
    mov edi, text
    jmp LOOP_CONDITION
LOOP:
    cmp al, 'A'
    jl WRITE
    cmp al, 'z'
    jg WRITE
    
    cmp al, 'Z'
    jle ROTATE_UPPER
    
    cmp al, 'a'
    jl WRITE
    
ROTATE_LOWER:
    cmp al, 'm'
    jg SUBSTRACT
    add al, 13
    jmp WRITE
SUBSTRACT:
    sub al, 13
    
    jmp WRITE
    
ROTATE_UPPER:
    cmp al, 'M'
    jg SUBSTRACT_UPPER
    add al, 13
    jmp WRITE
SUBSTRACT_UPPER:
    sub al, 13
    
WRITE:
    stosb
    PRINT_CHAR al
LOOP_CONDITION:
    lodsb
    cmp esi, text+length
    jl LOOP

    xor eax, eax
    ret