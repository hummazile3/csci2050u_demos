; this example is another hello world example, but this time using the C library (libc)

extern printf

global main

section .text

main:
    ; printf("Hello from LibC!")   <- basically, this
    ; printf("%s", message)        <- more accurately, this
    ; arguments:  rdi, rsi, rax
    ; return value: rax
    mov rdi, format 
    mov rsi, message 
    mov rax, 0
    call printf

    ; exit(0) or return 0
    mov rax, 0
    ret


section .data
    format db "%s", 0ah, 0dh, 0
    message db "Hello from LibC!", 0
    courseCode dq 2050
