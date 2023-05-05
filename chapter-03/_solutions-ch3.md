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

Q3 > Use the command line and compile a C program with an array of 1 million doubles. You will probably need to us `-Wl,--stack,8000000` option on the gcc command. Note that this option has a lowercase 'L' after the 'W' not a '1'. Test the program by writing a loop and placing 0.0 throughout the array. Determine the smallest number which works to the nearest 1000.

> [!bug]
> The question at the end is kind of unclear and vague when it asks "Determine the smallest number which works to the nearest 1000.". After some messing around and research I'm pretty sure it's referring to the stack size argument for gcc as you can specify a smaller stack size than `8000000` and the program still executes correctly. This is discussed further in the solution below but I would highly encourage oneself into figuring out why this is and at what specific stack size works and doesn't and why! :)

> [!tip]
> During this my adventures with this book I've been using powershell with oh-my-posh installed. Turns out that powershell and gcc (maybe its a mingw-gcc issue?) syntax do not get along.
> 
> In order  to get gcc to successfully run with the compiler flags `-Wl,--stack,8000000`, I had to surround the flag in quotes as seen below:
> ```powershell
> gcc ./problem3.c -o problem3.exe "-Wl,--stack,8000000"
> ```

> [!warning]- A3
> To satisfy the program portion of this question I wrote the below code:
> 
> ```c
> #include <stdio.h>
> 
> int main()
> {
>     double array[1000000];
> 
>     for (int i=0; i < 1000000; i++)
>         array[i] = 0.0;
> 
>     printf("done...\n");
>     return 0;
> }
> ```
> 
> Compiling with the gcc flag `-Wl,--stack,8000000` the program compiles fine and executes successfully without error.
> 
> Now, as one might have guessed from the question, can we link this program with less stack space? Using the gcc command: `gcc ./problem3.c -o problem3.exe "-Wl,--stack,7999000"` we get an executable that successfully runs.
> 
> So, how low can we go? Linking with a stack space of `7991000` the program doesn't run anymore and crashes.
> 
> After going back and forth a bit I found that the smallest stack size that allows the program to successfully run is `7995393`.
> 
> #### Going Deeper
> 
> So, now the question you should be having is why `7995393` works but `7995392` crashes. Also, as a fair warning, the information down below is all a very educational guess as I don't have 100% confirmation that things are working the way they are, but the evidence strongly supports the claims.
> 
> Using the Visual Studio developer console and the `dumpbin` program with the `/headers` flag we get the following information under the `OPTIONAL HEADER VALUES` section for the program compiled with the stack space of `7995392`:
> ![[Pasted image 20230503132757.png|350]]
> 
> Converting the numbers from hex to decimal we get:
> 
> | Base | Stack Reserve | Stack Commit |
> | :--- | --- | --- |
> | Hex | 0x7A0000 | 0x1000 |
> | Decimal | 7995392 | 4096 |
> 
> This is interesting, the stack reserve is equal to our linker flag in gcc while the stack commit is equal to the size of a user mode programs default page size. Adding the two together we get a total of `7999488[B]`. Dividing this by the default user mode page size of `4096[B]` we get `1953[pages]`.
> 
> Re-compiling and linking with the stack size that worked, `7995393`, we find the following stack sizes from the `dumpbin` program:
> ![[Pasted image 20230503143844.png|350]]
> 
> Converting the numbers from hex to decimal we get:
> 
> | Base | Stack Reserve | Stack Commit |
> | :--- | --- | --- |
> | Hex | 0x7A0001 | 0x1000 |
> | Decimal | 7995393 | 4096 |
> 
> Adding the two sizes together we now get a total stack size of `7999489[B]`.
> 
> So, why did this one work? Looking back at the one that didn't work we see that we stack  size is equal to exactly `1953[pages]` of memory which is `7999488[B]`. This is clearly not enough stack space as just storing our array of doubles alone should take `8000000[B]`. Doing the math for the one that does work, we find that our total stack size is `7999489[B]`. However, this is equal to `1953.00024414[pages]` of memory. As we can't have a fraction of a page I'm assuming windows goes ahead and allocates the next full page bringing the total to `1954[pages]` of memory.
> 
> Doing the math, `1954[pages]` of memory is equal to `8003584[B]` of memory. This is now plenty of memory for our `8000000[B]` of doubles and any C runtime overhead that requires stack space.
> 

Q4 > Print the value of `rsp` in ebe. How many bits are required to store this value?

> [!warning]- A4
> To start off, I'm not even sure why this question exists. It doesn't seem to fit in with the chapter contents. Going to the Intel manual under section 3.7.2.1, one can see that RSP is a 64-bit general-purpose register while in 64-bit mode.
> 
> ![[Pasted image 20230504230317.png]]
> 
