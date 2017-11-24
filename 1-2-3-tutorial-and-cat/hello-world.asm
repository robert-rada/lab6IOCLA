global main
extern puts
extern gets 

section .data
    buffer: times 128 db 0

section .text
main:
    push buffer
    call gets
    add esp, 4

    push buffer
    call puts
    add esp, 4
    ret
