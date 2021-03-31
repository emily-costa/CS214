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
