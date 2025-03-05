.section .text.entry
.globl _start
_start:
    xor %rbp, %rbp
    mov %rsp, %rdi
    .weak _DYNAMIC
    .hidden _DYNAMIC
    lea _DYNAMIC(%rip), %rsi
    andq $-16, %rsp
    call __start_main
