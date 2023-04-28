        segment .data
array1  times 10 dq 0x1122334455667788
string1 db "Some string...", 0

        segment .bss
array2  resw 5

        segment .text
        global  main
        extern  exit
main:
        push    rbp
        mov     rbp, rsp
    
        sub     rsp, 32
        mov     rcx, 0
        call    exit

