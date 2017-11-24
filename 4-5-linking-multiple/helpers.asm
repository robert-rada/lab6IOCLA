global isPalindrome

extern strcpy
extern strcmp

section .text

reverse:
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]
    mov ecx, eax

STRLEN:
    mov dl, [ecx]
    add ecx, 1
    test dl, dl
    jnz STRLEN
    
    sub ecx, 2

    ; eax = left
    ; ecx = right

LOOP:
    mov dl, [eax]
    mov dh, [ecx]
    mov [eax], dh
    mov [ecx], dl
    add eax, 1
    sub ecx, 1
LOOP_CONDITION:
    cmp eax, ecx
    jl LOOP

    leave
    ret

isPalindrome:
    push ebp
    mov ebp, esp
    sub esp, 1024

    mov eax, [ebp + 8]
    lea ebx, [esp]
    push eax
    push ebx
    call strcpy
    add esp, 8

    lea eax, [esp]
    push eax
    call reverse
    add esp, 4

    mov eax, [ebp + 8]
    lea ebx, [esp]
    push eax
    push ebx
    call strcmp
    add esp, 8

    leave
    ret
