; Chapter 2, Problem 8
; Solution by: SacredSqueegee
;
; Solution notes:
;   We are told to use dd and dw to solve this
;   problem. dd stands for "define double word"
;   where dw stands for "define word". The sizes
;   of which can be seen below:
;
;   nibble  = 4 bits
;   byte    = 2 nibbles = 8 bits
;   word    = 2 bytes   = 16 bits
;   dword   = 2 words   = 4 bytes   = 32 bits
;   qword   = 2 dwords  = 4 words   = 8 bytes   = 64 bits
;

    section .data
; Question 1
oneA    dw  37
oneB    dw  65
oneC    dw  350
oneD    dw  427

; Question 2
twoA    dw  0b0000001010101010
twoB    dw  0b1111111111101101
twoC    dw  0x0101
twoD    dw  0xffcc

; Question 3
threeA  dw  0x015a
threeB  dw  0xfedc
threeC  dw  0x0101
threeD  dw  0xacdc

; Question 4
fourA   dd  1.375
fourB   dd  0.041015625
fourC   dd  -571.3125
fourD   dd  4091.125

testing dd  16777217.0
testin dd  16777218.0

