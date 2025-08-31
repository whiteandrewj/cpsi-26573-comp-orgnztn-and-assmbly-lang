		.386
		.model flat, c
		.stack 100h

		.data

; --------- QUESTION 2 ------------
; A
;initial	byte ?

; B
;grade	byte 'B'

; C
;x		byte 'P'
;y		byte 'Q'

; D
;amount	sdword ?

; E
;count	sdword 0

; F
;number	sdword -396


; --------- QUESTION 4 ------------
;a		sdword ?
;b		sdword ?
;c1		sdword ?
;i		sdword ?
;y		sdword ?
;x		sdword ?

;			.code

; A
;		mov i,1

; B
;		mov eax,y
;		mov x,eax

; C
;		mov c1,2
;		mov eax,c1
;		mov b,eax
;		mov eax,b	; not sure is this line is needed
;		mov a,eax

; D
;		mov y,1
;		mov eax,y
;		mov x,eax

; --------- QUESTION 4 ------------

a		byte ?
b		byte ?
c1		byte ?
d		byte ?
e		byte ?

			.code
; A
		mov a,'B'

; B
		mov al,c1
		mov b,al

; C
		mov d,'E'
		mov al,d
		mov e,al

; D
		mov d,'z'
		mov al,d
		mov a,al
		mov al,a
		mov b,al



main		proc

			ret
main		endp
			end