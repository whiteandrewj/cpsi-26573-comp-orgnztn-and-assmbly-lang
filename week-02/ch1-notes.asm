; symbol types: directive tells the assembler what to do, while instruction tells the CPU what to do

; organized into four columns
;col1	col2 col3	col4
;label	opcode operand	comment
			
	.386		; directive   - tells assember to assemble to run on Intel 386 or newer processor
	.model flat, c	; directive   - program uses protected mode. 32-bit addresses will be used and possible to address 4GB of memory. "c" indicates it can link with C/C++
	.stack 100h	; directive   - indicates the size of the stack is in hexadecimal, i.e. 100 hexadecimal bytes (256 bytes)
	.data		; directive   - data segment
num1	sdword ?	;   - variable declaration. ? indicates value would not be initialized by assembler. Can be initialized with a literal e.g. "num1 sdword 5"
num2	sdword ?	;   - variable declaration.                          
	.code		; directive   - code segment
main	proc		; directive   - procedure's name is "main"
	mov num1,5	; instruction - move the immediate value "5" to the memory location "num1"
	mov eax,num1
	mov num2,eax
	ret		; instruction - similar to C "return 0"
main	endp		; directive   - "main" is the label. "endp" is a directive that indicates the end of the procedure
	end		; directive   - tells assembler this is end of program

; variable names begin with a letter and can be followed by letters or digits. Can also include _, @, or $ but these should be avoided. Not case sensitive. Max length is 247 characters
; variable types include sdword (signed double word - 32 bits long - sames as int in C), dword, sword, word, sbyte, byte ("s" prefix indicates a signed i.e. + or - value)
; "bit" stands for binary digit i.e. 1 or 0. Eight bits is a byte. A "word" of memory is is 2 bytes or 16 bits. A double word contains 2 bytes or 32 bits
; character data is typically stored as "byte", e.g. grade1 byte 'A'
; a string can sometimes be declared as an array of bytes, e.g. grades byte 'A', 'B', 'C', but are usually decared as a complete string for readability, e.g. name byte 'Abe'
; strings are typically appended with a binary zero to indicate the end of the string, e.g. name byte 'Abe',0
; arrays of other types such as integers can also be declared, e.g. nums sdword 2,5,7

; mov is similar to the assignment operator "=" in C, in that it actually copies the data
; mov always moves data from the right operand (source) to the left operand (destination)
; for example, in C when the assignment x=y is made data is loaded from a location in RAM into a "register" on the CPU ("load" operation) and then stored back to another location in RAM ("store" operation). 
; the mov instruction is shorthand for this
; Fach processor has it's own unique set of registers. 16-bit Intel CPU's had registers which could each hold 16 bits (four general-purpose registers named ax, bx, cx, dx).
; The 386 CPU introduced 32-bit registers which were renamed with 'e' prefix to denote their expanded capacity (eax, ebx, ecx, edx)
; The first 16 bits of the 386 registers can be addressed with their old names. Additionally, each 8 bit segment can be addressed using the "h" (high) or "l" (low) suffix (ah, al, bh, bl, ch, cl, dh, dl)
; Each general use register has conventional uses
; 	eax: Accumulator - useful for arithmetic operations (different naming than other processors where all registers can be called "accumulators"
;	ebx: Base - useful for array processing
;	ecx: Counter - useful for special loop instructions
;	edx: Data - useful as a data register in arithmetic instructions
; In addition to the general-use registers, there are others
;	esp: stack pointer (top)
;	ebp: stack pointer (bottom)
;	esi: source index
;	edi: destination index
;	cs:  points to code segment (set by .code directive)
;	ds:  points to data segment (set by .data directive)
;	ss:  points to stack segment (set by .stack directive)
;	eip: instruction pointer (which instructions will be executed next)
;	eflags: status of CPU after executing instructions
