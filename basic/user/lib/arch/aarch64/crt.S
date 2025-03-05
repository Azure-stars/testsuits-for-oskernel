.section .text.entry
.globl _start
_start:
    mov x29, #0
    mov x30, #0
    mov x0, sp
    .weak _DYNAMIC
    .hidden _DYNAMIC
    adrp x1, _DYNAMIC
    add x1, x1, #:lo12:_DYNAMIC
    and sp, x0, #-16
    b __start_main
