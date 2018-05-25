.386
.model flat,stdcall
option casemap:none

include     \masm32\include\windows.inc
include     \masm32\include\kernel32.inc
include     \masm32\include\msvcrt.inc
include     \masm32\include\user32.inc
include     \masm32\macros\macros.asm								;replaces invoke exitprocess with exit
include		\masm32\include\masm32.inc

includelib  \masm32\lib\kernel32.lib
includelib  \masm32\lib\msvcrt.lib
includelib  \masm32\lib\user32.lib


.data
StringBffr  db  128		dup(?)										;stores the string
msg         db "Enter your favorite rapper's adlib from the list: ",					;display list of rappers
				"Travis Scott(t), Gucci Mane(g), Offset(o), Desiigner(d), Lil Uzi(l), ",
				"Chance The Rapper(c), Waka Flocka(w), Young Thug(y)", 13,10,0
ext			db "Enter 'e' to exit program",13,10,0					;display sentinel value 
msg2        db 'You entered %s, here is their adlib',13,10,13,10,0	;displays string entered
top			db "The adlib of your rapper is here", 0				
bye			db "Goodbye!", 0										;exit messagebox
byetop		db "Project terminated", 0								;exit messagebox header

tradlib		db 'Its lit!',13,10,0									;Travis Scott adlib
gadlib		db 'Burr!',13,10,0										;Gucci Mane adlib
offadlib	db 'Offset!',13,10,0									;Offset adlib
desadlib	db 'D-r-r-r-r-r-r-r-r-AHHHH!',13,10,0					;Desiigner adlib
luadlib		db 'Yeah yeah yeah!',13,10,0							;Lil Uzi adlib
chadlib		db 'IIIIIGH!!!!',13,10,0								;Chance The Rapper adlib
wakadlib	db 'BOW',13,10,0										;Waka Flocka adlib
yungadlib	db 'EEEEEEE',13,10,0									;Young Thug adlib
wronglib	db 'Enter a valid rapper!!',13,10,0						;Input Validation
.code

start:

    invoke  crt_printf,ADDR msg
	
	invoke	crt_printf, ADDR ext

    invoke  crt_gets,ADDR StringBffr

	invoke  crt_printf,ADDR msg2,eax

	mov bl, "t"				;moves character 't' to bl
	mov bh, StringBffr		;moves string to bh
	cmp bh,bl				;compares the 't' to the first letter of StringBffer
	JE	travvy				;if the two characters match, jump to function

	mov bl, "g"
	cmp bh,bl
	JE	gucci

	mov bl, "o"
	cmp bh,bl
	JE	offsett

	mov bl, "d"
	cmp	bh,bl
	JE designer

	mov bl, "l"
	cmp bh,bl
	JE liluzi

	mov bl, "c"
	cmp bh,bl
	JE chance

	mov bl, "w"
	cmp bh,bl
	JE wakaflocka

	mov bl, "y"
	cmp bh,bl
	JE youngthug

	mov bl, "e"				;moves character 'e' to bl
	cmp bh,bl				;compares the 'e' to the first letter of StringBffer
	JE	endadlib			;if match, exits the program

	JNE wrong

;Function List
travvy:
	invoke MessageBox,NULL,addr tradlib,addr top, MB_OK
	jmp start

gucci:
	invoke MessageBox,NULL,addr gadlib,addr top, MB_OK
	jmp start

offsett:
	invoke MessageBox,NULL,addr offadlib,addr top, MB_OK
	jmp start

designer:
	invoke MessageBox,NULL,addr desadlib,addr top, MB_OK
	jmp start

liluzi:
	invoke MessageBox,NULL,addr luadlib,addr top, MB_OK
	jmp start

chance:
	invoke MessageBox,NULL,addr chadlib,addr top, MB_OK
	jmp start

wakaflocka:
	invoke MessageBox,NULL,addr wakadlib,addr top, MB_OK
	jmp start

youngthug:
	invoke MessageBox,NULL,addr yungadlib,addr top, MB_OK
	jmp start

endadlib:
	invoke MessageBox,NULL,addr bye,addr byetop, MB_OK
    exit

wrong:
	invoke MessageBox,NULL,addr wronglib,addr top, MB_OK
	jmp start

END start
