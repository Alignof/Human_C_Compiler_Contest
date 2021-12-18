.intel_syntax noprefix
.data
.LC0:
    .string "%d"
.text
.globl main
main:
    # prologue
    push rbp
    mov rbp, rsp
    sub rsp, 0x8   # allocate stack (sizeof(int) * 2)

    # call scanf
    lea rsi, [rbp - 0x4] # second argument &a
    lea rdi, .LC0[rip] # first argument "%d"
    mov rax, 2 # it's given two arguments

    push rbp
    mov rbp, rsp
    and rsp, -0x10 # stack alignment
    call scanf
    mov rsp, rbp
    pop rbp

    # call scanf
    lea rsi, [rbp - 0x8] # second argument &b
    lea rdi, .LC0[rip] # first argument "%d"
    mov rax, 2 # it's given two arguments

    push rax # stack alignment
    call scanf
    pop rax

    # a + b
    mov rax, [rbp - 0x4]    # rax = a 
    add rax, [rbp - 0x8]    # rax += b

    # epilogue
    mov rsp, rbp
    pop rbp
    ret


    
