			.386
			.model flat, c
			.stack 100h
printf		PROTO arg1:Ptr Byte, printlist:VARARG
scanf		PROTO arg2:Ptr Byte, inputlist:VARARG
			.data
in1fmt		byte "%d",0
msg0fmt		byte 0Ah,"%s",0
msg1fmt		byte 0Ah,"%s",0Ah,0Ah,0
msg2fmt		byte "%s%d%s%d",0Ah,0Ah,0
msg0		byte "Enter a value for num1: ",0
msg1		byte "Enter a value for num2: ",0
msg2		byte "num1 num2 ",0
msg3		byte " ",0
num1		sdword ?
num2		sdword ?
			.code
main		proc
			INVOKE printf, ADDR msg0fmt, ADDR msg0
			INVOKE scanf, ADDR in1fmt, ADDR num1
			INVOKE printf, ADDR msg0fmt, ADDR msg1
			INVOKE scanf, ADDR in1fmt, ADDR num2
			INVOKE printf, ADDR msg1fmt, ADDR msg2
			INVOKE printf, ADDR msg2fmt, ADDR msg3, num1, ADDR msg3, num2
			ret
main		endp
			end