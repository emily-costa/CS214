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
