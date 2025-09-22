			.386
			.model flat, c
			.stack 100h
printf		PROTO arg1:Ptr Byte, printlist:VARARG
scanf		PROTO arg2:Ptr Byte, inputlist:VARARG
			.data
in1fmt		byte "%d",0
msg0fmt		byte "%s",0
msg1fmt		byte "%d%s%d%s%d",0Ah,0
msg0		byte "Enter a number: ",0
msg1		byte "Enter a larger number: ",0
msg2		byte "Enter an even larger number: ",0
msg3		byte " < ",0
msg4		byte " > ",0
num1		sdword ?
num2		sdword ?
num3		sdword ?
			.code
main		proc
			INVOKE printf, ADDR msg0fmt, ADDR msg0
			INVOKE scanf, ADDR in1fmt, ADDR num1
			INVOKE printf, ADDR msg0fmt, ADDR msg1
			INVOKE scanf, ADDR in1fmt, ADDR num2
			INVOKE printf, ADDR msg0fmt, ADDR msg2
			INVOKE scanf, ADDR in1fmt, ADDR num3
			INVOKE printf, ADDR msg1fmt, num1, ADDR msg3, num2, ADDR msg3, num3
			INVOKE printf, ADDR msg1fmt, num3, ADDR msg4, num2, ADDR msg4, num1
			ret
main		endp
			end