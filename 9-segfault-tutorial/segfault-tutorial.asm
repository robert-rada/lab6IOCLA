extern gets
extern puts
extern strcpy

global main

section .text

main:
    push ebp
    mov ebp, esp
    sub esp, 1024

    mov eax, [ebp + 12]
    lea ebx, [esp]
    push dword [eax + 4]
    push ebx
    call strcpy
    add esp, 4
    call puts

    leave
    ret
