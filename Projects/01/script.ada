Script started on 2020-02-10 21:21:28-0500
]0;eac33@gold29: ~/Desktop/214/Projects/01/Ada[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Ada[00m$ exit./rectangle_area[7@gnatmake rectangle_area[1Pcat rectangle_area.adb
-- Emily Costa
-- Feb 12, 2020
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

-- start of main function
procedure rectangle_area is

   -- declaring float variables
  height, width, area : float;

   -- calling a function that going to take a float value for h and w (height and width)
   function RectangleArea(h,w: in float) return float is

   begin
   	  -- function returning the value of the area 
      return h * w;
   end RectangleArea;

begin 
  
   -- prompt user to give values for height and width
   New_Line;
   Put_Line("To compute the area of a rectangle,");
   Put("enter its height: ");
   Get(height);
   Put("enter its width: ");
   Get(width);
   
   -- calling the function RectangleArea
   area := RectangleArea(height, width);

   -- print results
   New_Line;
   Put("The Rectangle's area is ");
   Put(area, 1, 2, 0);
   New_Line; New_Line; 

end rectangle_area;
]0;eac33@gold29: ~/Desktop/214/Projects/01/Ada[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Ada[00m$ cat rectangle_area.adbexit[K./rectangle_area[7@gnatmake rectangle_area
gnatmake: "rectangle_area" up to date.
]0;eac33@gold29: ~/Desktop/214/Projects/01/Ada[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Ada[00m$ gnatmake rectangle_area[1Pcat rectangle_area.adbexit[K./rectangle_area[7@gnatmake rectangle_area[7P./rectangle_area

To compute the area of a rectangle,
enter its height: 4
enter its width: 8

The Rectangle's area is 32.00

]0;eac33@gold29: ~/Desktop/214/Projects/01/Ada[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Ada[00m$ ./rectangle_area

To compute the area of a rectangle,
enter its height: 2.5
enter its width: 2.6

The Rectangle's area is 6.50

]0;eac33@gold29: ~/Desktop/214/Projects/01/Ada[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Ada[00m$ exit
exit

Script done on 2020-02-10 21:21:59-0500
