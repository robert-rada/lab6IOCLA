global main

extern puts
extern gets

extern isPalindrome

section .data
    puts_true: db "Is palindrome", 10, 0
    puts_false: db "Is not palindrome", 10, 0

section .text

main:
    push ebp
    mov ebp, esp
    sub esp, 1024

    lea eax, [esp]
    push eax
    call gets
    add esp, 4

    lea eax, [esp]
    push eax
    call isPalindrome
    add esp, 4

    or eax, 0
    jz true

    push puts_false
    call puts
    jmp finish
true:
    push puts_true
    call puts
finish:
    leave
    ret
