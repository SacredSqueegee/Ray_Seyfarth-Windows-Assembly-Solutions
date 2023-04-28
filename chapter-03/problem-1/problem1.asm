        segment .data
array1  times 10 dq 0x1122334455667788
string1 db "Some string...", 0

        segment .bss
array2  resw 5
array3  resw 1
array4  resw 2

        segment .text
        global  main
        extern  exit
main:
        push    rbp
        mov     rbp, rsp
    
        sub     rsp, 32
        mov     rax, 0
        call    exit

