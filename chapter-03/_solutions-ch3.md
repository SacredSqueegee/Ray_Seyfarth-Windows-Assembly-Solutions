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

Q2 > Assuming that the stack size limit is 1MB about how large can you declare an array of doubles inside a c++ function. Do not use the keyword static.

> [!warning]- A2
> For this problem we are going to make a few assumptions, like a good engineer :).
> - The whole stack is dedicated to the storage of our array of doubles. So, their won't be call back addresses, variables, or any other junk on the stack to account for. The stack will be 100% allocated to our array.
> - No using the heap for extra storage as directed by the last statement of the question.
> - A double is: 64-bits = 8-bytes = 1-qword
> 
> First step is to figure out how many bytes we are working with. This is quite simple as $1[\text{MB}]=1024^2[\text{B}]=1,048,576[\text{B}]$.
> 
> Now, knowing that a double is 8-bytes long, we just divide `1,048,576` by `8`.
> $1,048,576\ [\text{B}]\ /\ 8\ [\text{B/double}]=131,072\ [\text{doubles}]$
> 
> Thus, a stack of 1MB can store up to `131,072` doubles.

Q3 > 

> [!warning]- A3
> pass

Q4 > 

> [!warning]- A4
> pass
