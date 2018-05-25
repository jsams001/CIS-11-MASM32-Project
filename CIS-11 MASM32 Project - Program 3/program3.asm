.386
.model flat,stdcall
option casemap:none

include     \masm32\include\windows.inc
include     \masm32\include\kernel32.inc
include     \masm32\include\msvcrt.inc
include     \masm32\include\user32.inc
include     \masm32\macros\macros.asm ;replaces invoke exitprocess with exit
include		\masm32\include\masm32.inc

includelib  \masm32\lib\kernel32.lib
includelib  \masm32\lib\msvcrt.lib
includelib  \masm32\lib\user32.lib


.data
StringBffr  db  128		dup(?)											;stores the string
msg         db "Does It Move? (Y/N): ",13,10,0							;Question 1
msg2        db 'Should It Move? (Y/N): ',13,10,0						;Question 2
msg3		db 'INVALID ENTRY!!!',13,10,13,10,0							;Input Validation
nop1		db "NO PROBLEM!", 0											;"No Problem" messagebox
tap			db "YOU NEED TAPE!", 0										;"Tape" messagebox
wd			db "YOU NEED WD-40!", 0										;"WD-40" messagebox
extop		db "Project terminated", 0									;messagebox header

.code

start:
L1:
    invoke  crt_printf,ADDR msg	

    invoke  crt_gets,ADDR StringBffr

	.if(StringBffr != "y")
	;invoke  crt_printf,ADDR msg3
	jmp L2
	.else
	jmp L3
	.endif
	
L2:
	.if(StringBffr != "n")
	invoke  crt_printf,ADDR msg3
	jmp L1
	.else
	jmp L3
	.endif	

L3:

	mov bl, "y"				;moves character 'y' to bl
	mov bh, StringBffr		;moves string to bh
	cmp bh,bl				;compares the 'y' to the first letter of StringBffer
	JE	Q2					;if the two characters match, jump to function

	mov bl, "n"
	cmp bh,bl
	JE	Q2

Q2:
	invoke  crt_printf,ADDR msg2

    invoke  crt_gets,ADDR StringBffr

	.if(StringBffr != "y")
	;invoke  crt_printf,ADDR msg3
	jmp L4
	.else
	jmp L5
	.endif
	
L4:
	.if(StringBffr != "n")
	invoke  crt_printf,ADDR msg3
	jmp Q2
	.else
	jmp L5
	.endif	

L5:
	mov al, "y"				
	mov ah, StringBffr		
	cmp ah,al				
	JE	display				

	mov al, "n"
	cmp ah,al
	JE	display

display:

	cmp bl,al
	JE noproblem
	.if (bl == "y")
	jmp tape
	.else
	jmp wd40
	.endif

tape: 
	invoke MessageBox,NULL,addr tap,addr extop, MB_OK
	exit
wd40:
	invoke MessageBox,NULL,addr wd,addr extop, MB_OK
	exit
noproblem:
	invoke MessageBox,NULL,addr nop1,addr extop, MB_OK
    exit

END start
