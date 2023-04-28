# Chapter-02 Exercise Solutions
---
Q1 > Convert the following integers to binary.
1. 37
2. 65
3. 350
4. 427

> [!warning]- A1
> 1. 37 = 10 0101b
> > [!example]- Problem 1.1 Work
> > 
> > | Input | n | n / 2 | n % 2 | Result |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 37 | 37 | 18 | 1 | 0 |
> > | | 18 | 9 | 0 | 01 |
> > | | 9 | 4 | 1 | 101 |
> > | | 4 | 2 | 0 | 0101 |
> > | | 2 | 1 | 0 | 00101 |
> > | | 1 | 0 | 1 | 100101 |
> 
> 2. 65 = 100 0001b
> > [!example]- Problem 1.2 Work
> > 
> > | Input | n | n / 2 | n % 2 | Result |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 65 | 65 | 32 | 1 | 1 |
> > | | 32 | 16 | 0 | 01 |
> > | | 16 | 8 | 0 | 001 |
> > | | 8 | 4 | 0 | 0001 |
> > | | 4 | 2 | 0 | 00001 |
> > | | 2 | 1 | 0 | 000001 |
> > | | 1 | 0 | 1 | 1000001 |
> 
> 3. 350 = 1 0101 1110b
> > [!example]- Problem 1.3 Work
> > 
> > | Input | n | n / 2 | n % 2 | Result |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 350 | 350 | 175 | 0 | 0 |
> > | | 175 | 87 | 1 | 10 |
> > | | 87 | 43 | 1 | 110 |
> > | | 43 | 21 | 1 | 1110 |
> > | | 21 | 10 | 1 | 11110 |
> > | | 10 | 5 | 0 | 011110 |
> > | | 5 | 2 | 1 | 1011110 |
> > | | 2 | 1 | 0 | 01011110 |
> > | | 1 | 0 | 1 | 101011110 |
> 
> 4. 427 = 1 1010 1011b
> > [!example]- Problem 1.4 Work
> > 
> > | Input | n | n / 2 | n % 2 | Result |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 427 | 427 | 213 | 1 | 1 |
> > | | 213 | 106 | 1 | 11 |
> > | | 106 | 53 | 0 | 011 |
> > | | 53 | 26 | 1 | 1011 |
> > | | 26 | 13 | 0 | 01011 |
> > | | 13 | 6 | 1 | 101011 |
> > | | 6 | 3 | 0 | 0101011 |
> > | | 3 | 1 | 1 | 10101011 |
> > | | 1 | 0 | 1 | 110101011 |
> 


Q2 > Convert the following 16 bit signed integers to decimal.
1. 0000001010101010b
2. 1111111111101101b
3. 0x0101
4. 0xffcc

> [!warning]- A2
> 
> 1. 1010101010b = 682
> > [!example]- Problem 2.1 Work
> > 
> > | Input | number | bit | 2^bit | Running Summation |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 1010101010 | 10101010<u>**1**</u>0 | 1 | 2 | 2 |
> > |  | 101010<u>**1**</u>010 | 3 | 8 | 10 |
> > |  | 1010<u>**1**</u>01010 | 5 | 32 | 42 |
> > |  | 10<u>**1**</u>0101010 | 7 | 128 | 170 |
> > |  | <u>**1**</u>010101010 | 9 | 512 | 682 |
> > 
> 
> 2. 1111111111101101b = -19
> > [!example]- Problem 2.2 Work
> > 
> > #### Step-1
> > As this is a negative number, leading 1, we need to reverse the two's compliment by inverting and adding 1. Then we can convert that number from binary to decimal and apply the negative sign at the end.
> > 
> > | Starting Number | 1111111111101101 |
> > | --- | ---: |
> > | Invert | 0000000000010010 |
> > | Add 1 | 0000000000010011 |
> > 
> > #### Step-2
> > 
> > | Input | number | bit | 2^bit | Running Summation |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 10011 | 1001<u>**1**</u> | 0 | 1 | 1 |
> > |  | 100<u>**1**</u>1 | 1 | 2 | 3 |
> > |  | <u>**1**</u>0011 | 4 | 16 | 19 |
> > 
> > Finally, applying the sign bit yields: -19
> 
> 3. 0x0101 = 257
> > [!example]- Problem 2.3 Work
> > 
> > #### Step-1
> > First, expand the hexadecimal number into it's binary representation.
> > 
> > | 0x | 0 | 1 | 0 | 1 |
> > | :--- | :---: | :---: | :---: | :---: |
> > | 0b | 0000 | 0001 | 0000 | 0001 |
> > 
> > #### Step-2
> > 
> > | Input | number | bit | 2^bit | Running Summation |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 100000001 | 10000000<u>**1**</u> | 0 | 1 | 1 |
> > |  | <u>**1**</u>00000001 | 8 | 256 | 257 |
> >
> 
>4. 0xffcc = -52
> > [!example]- Problem 2.4 Work
> > 
> > #### Step-1
> > First, expand the hexadecimal number into it's binary representation.
> > 
> > | 0x | f | f | c | c |
> > | :--- | :---: | :---: | :---: | :---: |
> > | 0b | 1111 | 1111 | 1100 | 1100 |
> > 
> > #### Step-2
> > As this is a negative number, leading 1, we need to reverse the two's compliment by inverting and adding 1. Then we can convert that number from binary to decimal and apply the negative sign at the end.
> > 
> > | Starting Number | 1111111111001100 |
> > | --- | ---: |
> > | Invert | 0000000000110011 |
> > | Add 1 | 0000000000110100 |
> > 
> > #### Step-3
> >   
> > | Input | number | bit | 2^bit | Running Summation |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 110100 | 110<u>**1**</u>00 | 2 | 4 | 4 |
> > |  | 1<u>**1**</u>0100 | 4 | 16 | 20 |
> > |  | <u>**1**</u>10100 | 5 | 32 | 52 |
> > 
> > Finally, applying the sign bit yields: -52
> 


Q3 > Convert the following 16 bit unsigned integers to binary.
1. 0x015a
2. 0xfedc
3. 0x0101
4. 0xacdc

> [!warning]- A3
> 
> 1. 0x015a = 0000 0001 0101 1010
> > [!example]- Problem 3.1 Work
> > 
> > | 0x | 0 | 1 | 5 | a |
> > | :--- | :---: | :---: | :---: | :---: |
> > | 0b | 0000 | 0001 | 0101 | 1010 |
> > 
> 
> 2. 0xfedc = 1111 1110 1101 1100
> > [!example]- Problem 3.2 Work
> > 
> > | 0x | f | e | d | c |
> > | :--- | :---: | :---: | :---: | :---: |
> > | 0b | 1111 | 1110 | 1101 | 1100 |
> > 
> 
> 3. 0x0101 = 0000 0001 0000 0001
> > [!example]- Problem 3.3 Work
> > 
> > | 0x | 0 | 1 | 0 | 1 |
> > | :--- | :---: | :---: | :---: | :---: |
> > | 0b | 0000 | 0001 | 0000 | 0001 |
> > 
> 
> 4. 0xacdc = 1010 1100 1101 1100
> > [!example]- Problem 3.4 Work
> > 
> > | 0x | a | c | d | c |
> > | :--- | :---: | :---: | :---: | :---: |
> > | 0b | 1010 | 1100 | 1101 | 1100 |
> > 
> 


Q4 > Convert the following numbers to 32 bit floating point.
1. 1.375
2. 0.041015625
3. -571.3125
4. 4091.125

> [!warning]- A4
> 1. 1.375 = 0x3fb00000
> > [!example]- Problem 4.1 Work
> > 
> > #### Step-1
> > Convert whole number to binary
> > 
> > | Input | n | n / 2 | n % 2 | Result |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 1 | 1 | 0 | 1 | 1 |
> > 
> > #### Step-2
> > Convert fraction to binary
> > 
> > | Input | n | n * 2 | Result |
> > | :---: | :--- | :--- | ---: |
> > | 0.375 | 0.375 | 0.75 | 0 |
> > |  | 0.75 | 1.5 | 01 |
> > |  | 0.5 | 1 | 011 |
> > 
> > #### Step-3
> > Combine whole and fraction binary numbers resulting in: `1.011`
> > 
> > #### Step-4
> > Calculate biased exponent
> > 
> > Shifting the decimal to where the number in step-3 results in a leading 1.x value requires multiplying it by $2^0$. Thus, $1.011=1.011*2^0$, meaning that our exponent is `0`. Calculating the biased exponent is quite simple by adding `127` to the exponent. Therefore, $\text{biased\_exponent} = 0 + 127 = 127$
> > 
> > Converting our biased exponent to binary results in: `0111 1111`
> > 
> > #### Step-5
> > Calculate sign bit
> > 
> > Our starting number is positive. Therefore the sign bit is `0`.
> > 
> > ##### Step-6
> > Put it all together
> > 
> > | Sign | Biased Exponent | Mantissa |
> > | :---: | :---: | :--- |
> > | 0 | 0111 1111 | 0110 0000 0000 0000 0000 000 |
> > 
> > Convert from binary to hexadecimal.
> > 
> > | 0b | 0011 | 1111 | 1011 | 0000 | 0000 | 0000 | 0000 | 0000 |
> > | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
> > | 0x | 3 | f | b | 0 | 0 | 0 | 0 | 0 |
> > 
> 
> 2. 0.041015625 = 0x3d280000
> > [!example]- Problem 4.2 Work
> > 
> > #### Step-1
> > Convert whole number to binary
> > 
> > | Input | n | n / 2 | n % 2 | Result |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 0 | 0 | 0 | 0 | 0 |
> > 
> > #### Step-2
> > Convert fraction to binary
> > 
> > | Input | n | n * 2 | Result |
> > | :---: | :--- | :--- | ---: |
> > | 0.041015625 | 0.041015625 | 0.08203125 | 0 |
> > |  | 0.08203125 | 0.1640625 | 00 |
> > |  | 0.1640625 | 0.328125 | 000 |
> > |  | 0.328125 | 0.65625 | 0000 |
> > |  | 0.65625 | 1.3125 | 0 0001 |
> > |  | 0.3125 | 0.625 | 00 0010 |
> > |  | 0.625 | 1.25 | 000 0101 |
> > |  | 0.25 | 0.5 | 0000 1010 |
> > |  | 0.5 | 1 | 0 0001 0101 |
> > 
> > #### Step-3
> > Combine whole and fraction binary numbers resulting in: `0.000010101`
> > 
> > #### Step-4
> > Calculate biased exponent
> > 
> > Shifting the decimal to where the number in step-3 results in a leading 1.x value requires multiplying it by $2^{-5}$. Thus, $0.000010101=1.0101*2^{-5}$, meaning that our exponent is `-5`. Calculating the biased exponent is quite simple by adding `127` to the exponent. Therefore, $\text{biased\_exponent} = -5 + 127 = 122$
> > 
> > Converting our biased exponent to binary results in: `0111 1010`
> > 
> > #### Step-5
> > Calculate sign bit
> > 
> > Our starting number is positive. Therefore the sign bit is `0`.
> > 
> > ##### Step-6
> > Put it all together
> > 
> > | Sign | Biased Exponent | Mantissa |
> > | :---: | :---: | :--- |
> > | 0 | 01111 1111 | 0101 0000 0000 0000 0000 000 |
> > 
> > Convert from binary to hexadecimal.
> > 
> > | 0b | 0011 | 1101 | 0010 | 1000 | 0000 | 0000 | 0000 | 0000 |
> > | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
> > | 0x | 3 | d | 2 | 8 | 0 | 0 | 0 | 0 |
> > 
> 
> 3. -571.3125 = 0xc40ed400
> > [!example]- Problem 4.3 Work
> > 
> > #### Step-1
> > Convert whole number to binary
> > 
> > | Input | n | n / 2 | n % 2 | Result |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 571 | 571 | 285 | 1 | 1 |
> > |  | 285 | 142 | 1 | 11 |
> > |  | 142 | 71 | 0 | 011 |
> > |  | 71 | 35 | 1 | 1011 |
> > |  | 35 | 17 | 1 | 1101 1 |
> > |  | 17 | 8 | 1 | 1110 11 |
> > |  | 8 | 4 | 0 | 0111 011 |
> > |  | 4 | 2 | 0 | 0011 1011 |
> > |  | 2 | 1 | 0 | 0001 1101 1 |
> > |  | 1 | 0 | 1 | 1000 1110 11 |
> > 
> > #### Step-2
> > Convert fraction to binary
> > 
> > | Input | n | n * 2 | Result |
> > | :---: | :--- | :--- | ---: |
> > | 0.3125 | 0.3125 | 0.625 | 0 |
> > |  | 0.625 | 1.25 | 01 |
> > |  | 0.25 | 0.5 | 010 |
> > |  | 0.5 | 1 | 0101 |
> > 
> > #### Step-3
> > Combine whole and fraction binary numbers resulting in: `1000111011.0101`
> > 
> > #### Step-4
> > Calculate biased exponent
> > 
> > Shifting the decimal to where the number in step-3 results in a leading 1.x value requires multiplying it by $2^9$. Thus, $1000111011.0101=1.0001110110101*2^9$, meaning that our exponent is `9`. Calculating the biased exponent is quite simple by adding `127` to the exponent. Therefore, $\text{biased\_exponent} = 9 + 127 = 136$
> > 
> > Converting our biased exponent to binary results in: `1000 1010`
> > 
> > #### Step-5
> > Calculate sign bit
> > 
> > Our starting number is negative. Therefore the sign bit is `1`.
> > 
> > ##### Step-6
> > Put it all together
> > 
> > | Sign | Biased Exponent | Mantissa |
> > | :---: | :---: | :--- |
> > | 1 | 1000 1010 | 0001 1101 1010 1000 0000 000 |
> > 
> > Convert from binary to hexadecimal.
> > 
> > | 0b | 1100 | 0100 | 0000 | 1110 | 1101 | 0100 | 0000 | 0000 |
> > | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
> > | 0x | c | 4 | 0 | e | d | 4 | 0 | 0 |
> > 
> 
> 4. 4091.125 = 0x457fb200
> > [!example]- Problem 4.4 Work
> > 
> > #### Step-1
> > Convert whole number to binary
> > 
> > | Input | n | n / 2 | n % 2 | Result |
> > | :---: | :---: | :---: | :---: | ---: |
> > | 4091 | 4091 | 2045 | 1 | 1 |
> > |  | 2045 | 1022 | 1 | 11 |
> > |  | 1022 | 511 | 0 | 011 |
> > |  | 511 | 255 | 1 | 1011 |
> > |  | 255 | 127 | 1 | 1101 1 |
> > |  | 127 | 63 | 1 | 1110 11 |
> > |  | 63 | 31 | 1 | 1111 011 |
> > |  | 31 | 15 | 1 | 1111 1011 |
> > |  | 15 | 7 | 1 | 1111 1101 1 |
> > |  | 7 | 3 | 1 | 1111 1110 11 |
> > |  | 3 | 1 | 1 | 1111 1111 011 |
> > |  | 1 | 0 | 1 | 1111 1111 1011 |
> > 
> > #### Step-2
> > Convert fraction to binary
> > 
> > | Input | n | n * 2 | Result |
> > | :---: | :--- | :--- | ---: |
> > | 0.125 | 0.125 | 0.25 | 0 |
> > |  | 0.25 | 0.5 | 00 |
> > |  | 0.5 | 1 | 001 |
> > 
> > #### Step-3
> > Combine whole and fraction binary numbers resulting in: `1111 1111 1011.001`
> > 
> > #### Step-4
> > Calculate biased exponent
> > 
> > Shifting the decimal to where the number in step-3 results in a leading 1.x value requires multiplying it by $2^{11}$. Thus, $111111111011.001=1.11111111011001*2^{11}$, meaning that our exponent is `11`. Calculating the biased exponent is quite simple by adding `127` to the exponent. Therefore, $\text{biased\_exponent} = 1 + 127 = 138$
> > 
> > Converting our biased exponent to binary results in: `1000 1010`
> > 
> > #### Step-5
> > Calculate sign bit
> > 
> > Our starting number is positive. Therefore the sign bit is `0`.
> > 
> > ##### Step-6
> > Put it all together
> > 
> > | Sign | Biased Exponent | Mantissa |
> > | :---: | :---: | :--- |
> > | 0 | 1000 1010 | 1111 1111 0110 0100 0000 000 |
> > 
> > Convert from binary to hexadecimal.
> > 
> > | 0b | 0100 | 0101 | 0111 | 1111 | 1011 | 0010 | 0000 | 0000 |
> > | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
> > | 0x | 4 | 5 | 7 | f | b | 2 | 0 | 0 |
> > 
> 


Q5 > Convert the following numbers from 32 bit floating point to decimal.
> [!bug]
> For this question my book list each number as a 28 bit number. Using judgement based on question 5, I went ahead and assumed that a 0 was left off the end of each hexadecimal number. Thus, bringing the bit count back up to the expected 32 bits.
1. 0x3f820000
2. 0xbf820000
3. 0x4f840000
4. 0x3c860000

> [!warning]- A5
> 
> 1. 0x3f820000 = 1.015625
> > [!example]- Problem 5.1 Work
> > 
> > #### Step-1
> > Convert from hex to decimal
> > 
> > | 0x | 3 | f | 8 | 2 | 0 | 0 | 0 | 0 |
> > | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
> > | 0b | 0011 | 1111 | 1000 | 0010 | 0000 | 0000 | 0000 | 0000 |
> > 
> > #### Step-2
> > Break binary number into the three parts of a floating point number
> > 
> > | Sign | Biased Exponent | Mantissa |
> > | :---: | :---: | :--- |
> > | 0 | 0111 1111 | 0000 0100 0000 0000 0000 000 |
> > 
> > #### Step-3
> > Convert biased exponent back to exponent
> > 
> > 0111 1111b = 127
> > 127 - 127 = 0
> > exponent = 0
> > 
> > #### Step-4
> > Simplify floating point equation and solve
> > $1.000001*2^0$
> > $=((1*2^0)+(1*2^{-6}))*(2^0)$
> > $=(1+0.015625)*1$
> > $=1.015625$
> > 
> 
> 2. 0xbf820000 = -1.015625
> > [!example]- Problem 5.2 Work
> > 
> > #### Step-1
> > Convert from hex to decimal
> > 
> > | 0x | b | f | 8 | 2 | 0 | 0 | 0 | 0 |
> > | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
> > | 0b | 1011 | 1111 | 1000 | 0010 | 0000 | 0000 | 0000 | 0000 |
> > 
> > #### Step-2
> > Break binary number into the three parts of a floating point number
> > 
> > | Sign | Biased Exponent | Mantissa |
> > | :---: | :---: | :--- |
> > | 1 | 0111 1111 | 0000 0100 0000 0000 0000 000 |
> > 
> > #### Step-3
> > Convert biased exponent back to exponent
> > 
> > 0111 1111 = 127
> > 127 - 127 = 127
> > exponent = 0
> > 
> > #### Step-4
> > Simplify floating point equation and solve
> > $-1.000001*2^0$
> > $=-[((1*2^0)+(1*2^{-6}))*(2^0)]$
> > $=-[(1+0.015625)*1]$
> > $=-1.015625$
> > 
> 
> 3. 0x4f840000 = 4,429,185,024
> > [!example]- Problem 5.3 Work
> > 
> > #### Step-1
> > Convert from hex to decimal
> > 
> > | 0x | 4 | f | 8 | 4 | 0 | 0 | 0 | 0 |
> > | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
> > | 0b | 0100 | 1111 | 1000 | 0100 | 0000 | 0000 | 0000 | 0000 |
> > 
> > #### Step-2
> > Break binary number into the three parts of a floating point number
> > 
> > | Sign | Biased Exponent | Mantissa |
> > | :---: | :---: | :--- |
> > | 0 | 1001 1111 | 0000 1000 0000 0000 0000 000 |
> > 
> > #### Step-3
> > Convert biased exponent back to exponent
> > 
> > 1001 1111 = 159
> > 159 - 127 = 32
> > exponent = 32
> > 
> > #### Step-4
> > Simplify floating point equation and solve
> > $1.00001*2^{32}$
> > $=((1*2^0)+(1*2^{-5}))*(2^{32})$
> > $=(1+0.03125)*4294967296$
> > $=4,429,185,024$
> > 
> 
> 4. 0x3c860000 = 0.016357421875
> > [!example]- Problem 5.4 Work
> > 
> > #### Step-1
> > Convert from hex to decimal
> > 
> > | 0x | 3 | c | 8 | 6 | 0 | 0 | 0 | 0 |
> > | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
> > | 0b | 0011 | 1100 | 1000 | 0110 | 0000 | 0000 | 0000 | 0000 |
> > 
> > #### Step-2
> > Break binary number into the three parts of a floating point number
> > 
> > | Sign | Biased Exponent | Mantissa |
> > | :---: | :---: | :--- |
> > | 0 | 0111 1001 | 0000 1100  0000 0000 0000 000 |
> > 
> > #### Step-3
> > Convert biased exponent back to exponent
> > 
> > 0111 1001 = 121
> > 121 - 127 = -6
> > exponent = -6
> > 
> > #### Step-4
> > Simplify floating point equation and solve
> > $1.000011*2^{-6}$
> > $=((1*2^0)+(1*2^{-5})+(1*2^{-6}))*(2^{-6})$
> > $=(1+0.03125+0.015625)*0.015625$
> > $=0.016357421875$
> > 
> 


Q6 > Perform the binary addition of the 2 unsigned integers below. Show each carry as a 1 above the proper position.
$$
\begin{array}{}
  &0&0&0&1&&0&0&1&0&&1&1&0&0&&1&0&1&1 \\
+ &1&1&1&0&&1&1&0&1&&1&1&1&0&&1&0&1&1 \\
\hline
\\
\end{array}
$$

> [!warning]- A6
> $$
> \begin{array}{}
>   &\overset{1}{0}&\overset{1}{0}&\overset{1}{0}&\overset{1}{1}&&\overset{1}{0}&\overset{1}{0}&\overset{1}{1}&\overset{1}{0}&&\overset{1}{1}&1&0&\overset{1}{0}&&1&\overset{1}{0}&\overset{1}{1}&1 \\
> + &1&1&1&0&&1&1&0&1&&1&1&1&0&&1&0&1&1 \\
> \hline
> c1 &0&0&0&0&&0&0&0&1&&0&1&1&0&&1&1&0&0 \\
> \end{array}
> $$


Q7 > Perform the binary multiplication of the following unsigned binary numbers. Show each row where a 1 is multiplied times the top number. You may omit rows where a 0 is multiplied times the top.

$$
\begin{array}{}
  &1&0&&1&1&0&0&&1&0&1&1 \\
\text{x} &&&&&1&1&0&&1&1&0&1 \\
\hline
\\
\end{array}
$$

> [!warning]- A7
> $$
> \begin{array}{}
>   &&&&&&&&1&0&&1&1&0&0&&1&0&1&1 \\
> \text{x} &&&&&&&&&&&&1&1&0&&1&1&0&1 \\
> \hline
>   &&&&&&&&\overset{11}{1}&\overset{11}{0}&&\overset{11}{1}&\overset{1}{1}&\overset{1}{0}&\overset{1}{0}&&1&0&1&1 \\
>   &&&&&&&&&&&&&&&&&&&0 \\
>   &&&&&&\overset{11}{1}&\overset{111}{0}&1&1&&0&0&1&0&&1&1&0&0 \\
>   &&&&\overset{11}{1}&&0&1&1&0&&0&1&0&1&&1&0&0&0 \\
>   &&&&&&&&&&&&&&&&&&&0 \\
>   &&\overset{1}{1}&\overset{11}{0}&1&&1&0&0&1&&0&1&1&0&&0&0&0&0 \\
> + &\overset{1}{1}&0&1&1&&0&0&1&0&&1&1&0&0&&0&0&0&0 \\
> \hline
> c1&0&0&1&1&&0&0&0&0&&0&1&1&0&&1&1&1&1 \\
> \end{array}
> $$


Q8 > Write an assembly "program" (data only) defining data values using ***dw*** and ***dd*** for all the numbers in exercises 1-4.

> [!warning]- A8
> 
> Below is the solution assembly file:
> 
> ```nasm
> ; File name: problem-8.asm
>     section .data
> ; Question 1
> oneA dw 37
> oneB dw 65
> oneC dw 350
> oneD dw 427
> 
> ; Question 2
> twoA dw 0b0000001010101010
> twoB dw 0b1111111111101101
> twoC dw 0x0101
> twoD dw 0xffcc
> 
> ; Question 3
> threeA dw 0x015a
> threeB dw 0xfedc
> threeC dw 0x0101
> threeD dw 0xacdc
> 
> ; Question 4
> fourA dd 1.375
> fourB dd 0.041015625
> fourC dd -571.3125
> fourD dd 4091.125
> ```
> 
> To generate the listing file add the following to the command line box before pressing run: `nasm -f win64 -l proglem-8.lst problem-8.asm`
> 
> After running this generate the listing file below. For brevity only the last few lines of the file are included as there is a lot of junk that EBE inserts into the assembly file before assembling.
> ```
> 17                              section .data
> 18                          ; Question 1
> 19 00000000 2500            oneA    dw  37
> 20 00000002 4100            oneB    dw  65
> 21 00000004 5E01            oneC    dw  350
> 22 00000006 AB01            oneD    dw  427
> 23                                  
> 24                          ; Question 2
> 25 00000008 AA02            twoA    dw  0b0000001010101010
> 26 0000000A EDFF            twoB    dw  0b1111111111101101
> 27 0000000C 0101            twoC    dw  0x0101
> 28 0000000E CCFF            twoD    dw  0xffcc
> 29                                  
> 30                          ; Question 3
> 31 00000010 5A01            threeA  dw  0x015a
> 32 00000012 DCFE            threeB  dw  0xfedc
> 33 00000014 0101            threeC  dw  0x0101
> 34 00000016 DCAC            threeD  dw  0xacdc
> 35                                  
> 36                          ; Question 4
> 37 00000018 0000B03F        fourA   dd  1.375
> 38 0000001C 0000283D        fourB   dd  0.041015625
> 39 00000020 00D40EC4        fourC   dd  -571.3125
> 40 00000024 00B27F45        fourD   dd  4091.125
> 41                                  
> ```


Q9 > Write a C or C++ program to start with 0.0 in a float and add 1.0 in a loop to the float until it stops changing. What is this minimum value?
> [!bug]
> Here I believe that instead of saying "What is this minimum value?" the author meant to say "What is this maximum value?" as he told us to add not subtract. That said, I believe you could do this in the other direction and subtract 1.0 from 0.0 and find the minimum value then. Both answers should be the same, one will just be negative while the other is positive.

> [!warning]- A9
> 
> Solution code:
> 
> ```c
> #include <stdio.h>
> #include <stdbool.h>
> 
> int main()
> {
>     float min,max,cur,prev = 0.0;
> 
>     while(true)
>     {
>         cur += 1.0;
>         
>         // Update min/max
>         if (cur > prev)
>             max = cur;
>         if (cur < prev)
>             min = cur;
> 
>         // Did cur actually change?
>         if (cur == prev)
>             break;
> 
>         prev = cur;
>     }
> 
>     printf("We incremented by 1.0 but the value of 'cur' did not change!\n");
>     printf("Value of cur: %f\n", cur);
>     printf("Value of prev: %f\n", prev);
>     printf("Value of max: %f\n", max);
>     printf("Value of min: %f\n", min);
> 
>     return 0;
> }
> ```
> 
> This produces the following output:
> ```txt
> We incremented by 1.0 but the value of 'cur' did not change!
> Value of cur: 16777216.000000
> Value of prev: 16777216.000000
> Value of max: 16777216.000000
> Value of min: 0.000000
> ```
> 
> After seeing the output you might be asking, "I thought floats can store a lot bigger numbers than 16777216?". Well, the short answer is you are correct. But, why did it stop incrementing then? Congratulations! You have now experienced a floating point precision error. This is explained via the precision of the 32-bit float.
> 
> Taking a closer look at the number `16777216` you will find that it is equal to $2^{24}$. Putting this in float form we get the following: 
> 
> | Sign | Biased Exponent | Mantissa |
> | :---: | :---: | :--- |
>  0 | 10010111 | 0000 0000  0000 0000 0000 000 |
>  
> Now, lets take a look at `16777216 + 1 = 16777217`.  Converting the whole number of `16777217` we get the binary number `1000000000000000000000001`. Then the fraction is just `0`. This gives us the binary float `1000000000000000000000001.0`. Shifting the decimal to give us a number in the form `1.x` requires multiplying our binary float by $2^{24}$ which gives us $1.000000000000000000000001*2^{24}$.
> 
> This means that the mantissa in our 32-bit float has to store the binary number $1*2^{-24}$. Thus, this exposes our problem, the mantissa in a 32-bit float can only store 23 bits. This means that when we truncate our mantissa to 23 bits the 1 in the 24th bit slot gets dropped off the end giving us a binary mantissa of `0000 0000 0000 0000 0000 000`. After this truncation, you will now see that with our sign, exponent and mantissa fields are the exact same as the fields for the number `16777216.0`. Thus, explaining why we can't store the number `16777217.0`
> 
> If you explore some more you will find that the next whole number that we can store is: `16777218.0`. This contains the following fields:
> 
> | Sign | Biased Exponent | Mantissa |
> | :---: | :---: | :--- |
>  0 | 10010111 | 0000 0000  0000 0000 0000 001 |
> 
