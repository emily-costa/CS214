Script started on 2020-02-20 00:27:56-0500
]0;eac33@gold30: ~/Desktop/214/Labs/03/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ada[00m$ cat year_codes.adb
-- Emily Costa
-- Feb 21, 2020
-- CS 214 A
-- Lab 3 - Given a grade level (string) return the appropriate number code (int)-------------------------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

-- start of main function
procedure year_codes is

   -- declaring string variable
   year : string(1..9);	
   length : integer;

   -- creating a function that will take a string and return correct int
   function Year_Code (year : in string) return Integer is
      begin
         --function returning int
         if (year = "freshman") then
            return 1;
	 elsif (year = "sophomore") then
	    return 2;
	 elsif (year = "junior") then
            return 3;
	 elsif (year = "senior") then
	    return 4;
         else
	    return 0;
         -- End of my if statements
         end if;
	 
      end Year_Code;

begin

   -- promt user to input year
   New_Line;
   Put_Line(" To compute the corresponding integer code: ");
   Put(" Enter name of academic year: ");
   get_line(year, length);

   -- calling funciton Year_Code to compare input print results
   -- important to format the input before sending to function 
   Put(" The integer code is: ");
   Put(Year_Code(year(1..length)),0);
   New_Line; New_Line;

end year_codes;
]0;eac33@gold30: ~/Desktop/214/Labs/03/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ada[00m$ cat year_codes.adb[1Pt[1P[1P[1@g[1@n[1@a[1@t[1@m[1@a[1@k[1@e year_codes.adb    
gnatmake: "year_codes" up to date.
]0;eac33@gold30: ~/Desktop/214/Labs/03/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ada[00m$ gnatmake year_codes[K./year_code
bash: ./year_code: No such file or directory
]0;eac33@gold30: ~/Desktop/214/Labs/03/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ada[00m$ ./year_codes

 To compute the corresponding integer code: 
 Enter name of academic year: freshman
 The integer code is: 1

]0;eac33@gold30: ~/Desktop/214/Labs/03/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ada[00m$ ./year_codes

 To compute the corresponding integer code: 
 Enter name of academic year: sophomore
 The integer code is: 2

]0;eac33@gold30: ~/Desktop/214/Labs/03/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ada[00m$ ./year_codes

 To compute the corresponding integer code: 
 Enter name of academic year: junior
 The integer code is: 3

]0;eac33@gold30: ~/Desktop/214/Labs/03/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ada[00m$ ./year_codes

 To compute the corresponding integer code: 
 Enter name of academic year: senior
 The integer code is: 4

]0;eac33@gold30: ~/Desktop/214/Labs/03/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ada[00m$ prek    ./year_codes

 To compute the corresponding integer code: 
 Enter name of academic year: prek
 The integer code is: 0

]0;eac33@gold30: ~/Desktop/214/Labs/03/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ada[00m$ exit
exit

Script done on 2020-02-20 00:28:53-0500
