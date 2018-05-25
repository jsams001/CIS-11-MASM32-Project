; CIS-11 Final Project - Program 2
; Group: Ctrl See - Jondell Samson, Marcos Padilla, Cesar Ahumada
; Purpose: User types in name and program reverses it in console. 
; User types ok in message box to terminate program
; Note: Must have masm32 and Project folders all installed
; and running on the same drive, preferably C:\

.486                                    ; create 32 bit code
.model flat, stdcall                    ; 32 bit memory model
option casemap :none                    ; case sensitive
include \masm32\include\windows.inc     ; always first
include \masm32\macros\macros.asm       ; MASM support macros
include \masm32\include\masm32.inc
include \masm32\include\gdi32.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc

includelib \masm32\lib\masm32.lib
includelib \masm32\lib\gdi32.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib


.data
Message db "Your name reversed is in the console window.", 0
Top db "Completed", 0
original_text PROTO :DWORD

.data?
originalstr DWORD 60 DUP(?)
reversestr DWORD 60 DUP(?)

.code                       
start:                        
  
    mov originalstr, input("Type your name: ")
    invoke original_text, originalstr
	call reverse_text								; procedure used to reverse the string
	invoke MessageBox,NULL,Addr Message,Addr Top,MB_OK          
    exit

original_text proc string:DWORD

    print chr$("This is your name: ",13,10)
    print string
	print chr$(13,10)          
    ret
original_text endp 

reverse_text proc

	print chr$("This is your name backwards:",13,10)
	invoke szRev, originalstr, addr reversestr
	print offset reversestr, 13, 10
    ret
reverse_text endp 

end start                       ; Tell MASM where the program ends