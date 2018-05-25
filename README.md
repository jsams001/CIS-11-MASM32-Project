# CIS-11-MASM32-Project
CIS-11 MASM32 Win32 Application Project 
Group: Ctrl See - Jondell Samson, Marcos Padilla, Cesar Ahumuda

The purpose of this project was to create three individual Windows programs 
coded in assembly through Visual Studio. Each group member worked on one 
individual project, and each project has their own Visual Studio located in
their respective folder. The actual code for each program should be located 
in the same folder, and can be found in the asm file for each.

Each folder should have a flowchart for the user to follow how the code runs through
each procedure. To build each individual project, you must download the zip file, and 
it is suggested to extract the contents into where you have your projects stored
in Visual Studio. It is also required to have [MASM32](http://www.masm32.com/) installed
onto the same drive of which your projects are on. Once you build the files successfully,
you can run the program in Visual Studio, or navigate into the Debug folder for each
respective program and run the .exe file for each.

The explicit requirements for the project can be found 
[here](C:\Users\MVC Student\Documents\CIS11 Course Project.docx). Each program is listed 
in greater detail below.

## Program 1 - Rapper Ad-libs
### by Marcos Padilla
Program 1 of the final MASM32 Project shows a list of rappers. The user types in the first 
letter for each rapper listed. Once ENTER is hit, that same rapper's ad-lib is displayed 
in a message box over the console. Once OK is hit on the message box, control is sent back
to the console, and the user can view all the 

The known constraints in the program is that the program throws an exception 
if the user-inputted string has a length of <= 1. Since the algorithm requires 
a minimum of two addresses to be filled, the program fails to run correctly if 
these requirements aren't met. There seems to be no issue if the string taken in
is incredibly long, but there are still problems with the edge case of 0.

## Program 2 - Name Reversal
### by Jondell Samson
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

## Program 3 - Engineering Decisions
### by Cesar Ahumuda
Program 3 of the final MASM32 Project takes in a name from user input, 
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
