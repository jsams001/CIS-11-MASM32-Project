# CIS-Project-Program-2
CIS-11 MASM32 Win32 Application Project 
Group: Ctrl See - Jondell Samson, Marcos Padilla, Cesar

## Purpose
Program 2 of the final MASM32 Project takes in a name from user input, 
and reverses that name in the console window. The user is then shown a 
message box explicitly stating that the program has finished its reversal,
and terminates once the user hits OK in the message box. Technical functions 
of the program include the ability to read and store user input, as well as
output a manipulated version of the user input and display it onto the Windows
console.

The known constraints in the program is that the program throws an exception 
if the user-inputted string has a length of <= 1. Since the algorithm requires 
a minimum of two addresses to be filled, the program fails to run correctly if 
these requirements aren't met. There seems to be no issue if the string taken in
is incredibly long, but there are still problems with the edge case of 0.

