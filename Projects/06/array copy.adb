-- Emily Costa
-- 214 A
-- March 18, 2020
-- Project 06 - read in an array from keyboard from user
-- and print the values
--------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;

-- start of main function
procedure num_array is 

	------------------------------
	-- declaring variables
	num : float;
	size: integer;

    type Vector is array(0..100) of Float;
    userArray : Vector;
	------------------------------

	-- procedure to scan in float values into array
	procedure inputArray(userArray : out Vector; size: in integer) is
	begin

		for i in 1..size loop
			Put(" Enter array value: ");
			Get(num);
			userArray(i) := num;
		end loop; 

	end inputArray;
	
	-- procedure to print array
	procedure printArray(userArray : Vector; size: in integer) is
	begin

		Put (" Array values are: ");

		for i in 1..size loop
			Put (userArray(i), 1, 2, 0);
			Put (" ");
		end loop;

	end printArray;

begin 

	-- prompt user for input
	New_Line;
	Put(" Enter the number of values in the array: ");
	Get(size);
	-- call function to scan in array values
	inputArray(userArray, size);
	-- call function to print array
	printArray(userArray, size);
	New_Line;
	New_Line;

end num_array; 