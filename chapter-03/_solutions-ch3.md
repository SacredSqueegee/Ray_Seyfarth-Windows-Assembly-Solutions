# Chapter-03 Exercise Solutions
---
Q1 > Write a data-only program like the one in this chapter to define an array of 10 8-byte integers in the data segment, an array of 5 2-byte integers in the bss segment, and a string terminated by 0 in the data segment. Use ebe's data command to print the 8-byte integers in hexadecimal, the 2-byte integers as unsigned values, and the string as a string.

> [!warning]- A1
> 
> Below is a simple assembly program meeting the requirements of question 1
> 
> ```nasm
> ; filename: problem1.asm
>     segment    .data
> ; Below defines an array of 10 8-byte integers
> ; I went ahead and defined each integer to be 0x1122334455667788
> ; to easily identify the integers in memory
> array1     times 10 dq 0x1122334455667788
> 
> ; Below defines a string terminated with a null byte `0`
> string1    db "Some string...", 0
> 
>     segment    .bss
> ; Below defines the other array of 5 2-byte integers
> array2     resw 5
> 
> ; Below is junk to make the program link and run
> ; ===============================================
>     segment    .text
>     global     main
>     extern     exit
> 
> main:
>     push       rbp
>     mov        rbp, rsp
> 
>     sub        rsp, 32
>     mov        rax, 0
>     call       exit
> ```
> 
> Inspecting the assembly data panel in EBE we see the following information:
> ![[Pasted image 20230428175625.png]]
> 
> If we decide to throw the generated executable, `problem1.exe`, into Binary Ninja we can go to the addresses listed in the Assembly Data area above and verify that these values are indeed included in the executable.
> 
> In the picture below we can indeed see that array1 is located at `0x00404010` and string1 is located at `0x00404060`. We can also verify that the data at these locations is correct as well.
> ![[Pasted image 20230428180447.png]]
> 
> Moving to the BSS segment we can also verify that array2 is at `0x00408280`.
> ![[Pasted image 20230428181053.png]]
> 
> If you look closely at array2 you might notice that there are actually 16 bytes "associated" with our array. This is more than the 10 bytes that we reserved in the BSS segment in our code. This is most likely do to the linker padding our array to the nearest alignment of 16 bytes.
> 

Q2 > 

> [!warning]- A2
> pass

Q3 > 

> [!warning]- A3
> pass

Q4 > 

> [!warning]- A4
> pass
