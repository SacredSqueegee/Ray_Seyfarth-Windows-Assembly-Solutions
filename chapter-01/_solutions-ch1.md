# Chapter-01 Exercise Solutions
---
Q1 > Enter the assembly language program from this chapter and assemble and link it. Then execute the program from the command line and enter "echo %errorlevel%". By convention in UNIX systems, a non-zero status from a program indicates an error. Change the program to yield a 0 status.

> [!warning]- A1
> #### Part-1
> Created the following batch file to run solution and display the problem answer:
> ```batch
> @echo off
> REM filename: solution.bat
> 
> .\exit.exe
> echo Status code of exit.exe: %errorlevel%
> ```
> After assembling and linking the program from the book and running the above script the below output is the result:
> ```txt
> Status code of exit.exe: 5
> ```
> #### Part-2
> Changing the error status of the book program to 0 is quite simple. This is accomplished via changing the line containing `mov ecx, 5` to `mov ecx, 0`. thus our final program becomes:
> ```nasm
> ; filename: exit.asm
> 	segment .text
> 	global main
> 	extern exit
> 	
> main:
> 	push    rbp
> 	mov     rbp, rsp
> 	sub     rsp, 32
> 	mov     ecx, 0
> 	call    exit
> ```
> Re-assembling and linking the above program and then re-running the batch file above now greats us with the following output:
> ```txt
> Status code of exit.exe: 0
> ```

Q2 > Use the "dir" command to determine the sizes of exit.asm, exit.o and exit.exe. Which file is the largest? Why?

> [!warning]- A2
> Using the dir command: `dir /os exit.*` yields the following output:
> ```text
> 04/25/2023  09:47 AM               153 exit.asm
> 04/25/2023  09:47 AM             7,097 exit.o
> 04/25/2023  09:47 AM            86,254 exit.exe
> 04/25/2023  09:47 AM            91,149 exit.lst
>                4 File(s)        184,653 bytes
>                0 Dir(s)  188,481,576,960 bytes free
> ```
> The smallest file of the three is `exit.asm`, this makes sense as the `.asm` file is really just a text file with a different extension to let you know that it contains assembly. 
> 
> The object file, `exit.o`, that is generated from the assembly program is quite a bit bigger as the instructions are no longer represented my short character mnemonics and are now expanded out into their machine code representation. The same applies for any constants defined in the program, they too are expanded out into their binary forms.
> 
> The largest of the files is `exit.exe`. One of the reasons this file is some much bigger is because part of the file has to contain information conforming to the PE, portable executable, format. A majority of the size increase is due to the linking of other files into the executable format. As EBE is utilizing a c-compiler under the hood for linking a lot of the size increase comes from linking mandatory c runtime files. There are probably some other reasons for the size increase as well.

Q3 > In C and many other languages, 0 means false and 1 (or non-zero) means true. In the shell 0 for the status of a process means success and non-zero means an error. Shell if statements essentially use 0 for true. Why did the writer of the first UNIX shell decide to use 0 for true?

> [!warning]- A3
> Without looking this up and using my previous programming/tech experiences I believe this was most likely done so that different error codes can easily be returned from a failed program. You only really care if a program succeeds so that can be observed through a single exit code. However, when a program fails you probably want to return for information than the program failed. Thus, if you use any number except 0 as a fail status you can then associated some sort of meaning behind the numbers to give the user/programmer a better idea of what went wrong.

Q4 > In the sample program we see that main begins at offset 0x740 within a page of memory. What might be placed in the bytes of the page before main?

> [!warning]- A4
> Again, without looking this up, my first guess is that these bytes before the start of our program is going to contain all of our defined data and maybe the space for the heap. This are might also contain other stuff for c runtime stuff or DLL's. Just my educated guess at the moment.
