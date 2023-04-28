; memory.asm book example

    segment .data
a   dd  4
b   dd  4.4
c   times 10 dd 0
d   dw  1, 2
e   db  0xfb
f   db  "hello world", 0

    segment .bss
g   resd    1
h   resd    10
i   resb    100

    segment .text
    global  main
main:
    push    rbp         ; setup a stack frame
    mov     rbp, rsp    ; rbp points to stack frame
    sub     rsp, 32     ; leave room for shadow parameters
                        ; rsp on a 16 byte boundary
    xor     eax, eax    ; rax = 0 for return value
    leave               ; undo stack frame changes
    ret



