    segment .text
    extern  exit
    global  main

main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 32
    mov     ecx, 5
    call    exit

