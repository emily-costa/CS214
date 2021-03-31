Script started on 2020-02-06 21:53:13-0500
]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ada[00m$ cat circle_area.adb
-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Emily Costa
-- Date:Feb 7 2020
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

]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ada[00m$ cat circle_area.adbexit[Kcat circle_area.adb[Kgnatmake circle_area
gnatmake: "circle_area" up to date.
]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ada[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 1

The circle's area is  3.14159E+00

The circle's area is 3.141592741012573

]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ada[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2

The circle's area is  1.25664E+01

The circle's area is 12.566370964050293

]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ada[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2.5

The circle's area is  1.96350E+01

The circle's area is 19.634954452514648

]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ada[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 4.99999

The circle's area is  7.85395E+01

The circle's area is 78.539505004882813

]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ada[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ada[00m$ exit
exit

Script done on 2020-02-06 21:54:22-0500
