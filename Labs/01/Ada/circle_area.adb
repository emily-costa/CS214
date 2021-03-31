-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

-- start of main function
procedure circle_area is

   -- declaring float variables
   radius, area : float; 

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   -- calling a function that going to take a float value for r (radius)
   function circleArea(r: in float) return float is 
   	  -- Assigning a constant value for PI
      PI : constant := 3.1415927;
   begin
   	  -- function returning the value of the area 
      return PI * r ** 2;
   end circleArea;

begin 
   -- Printing a new line                          
   New_Line;
   -- prints the string and a new line
   Put_Line("To compute the area of a circle,");
   -- Prints the string
   Put("enter its radius: ");
   -- reading user input for the value of radius
   Get(radius);
   
   -- calling the function CircleArea to calculate the radius
   area := circleArea(radius);

   -- Printing new line
   New_Line;
   -- Printing the string 
   Put("The circle's area is ");
   -- Printing the value of area
   Put(area);
   -- Print two new lines
   New_Line; New_Line; 

   -- Printing the string
   Put("The circle's area is ");
   -- Printing 15 decimal places of area
   Put(area, 1, 15, 0);
   -- Print two new lines
   New_Line; New_Line; 
end circle_area;

