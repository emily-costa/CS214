-- Emily Costa
-- Feb 28, 2020
-- CS 214 A
-- Lab 4 - Display simple algoirthm:
-- 1. Get start, stop, and increment.
-- 2. For count = start to stop by increment:
-- Display count and the logarithm of count
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

-- start of main function
procedure log_table is

    -- declaring float variables
    start, stop, s, total : float;
    --total : array (1..2) of float;

    -- proceudure (function that has no return value) LogTable
    -- print incrimenting by .5 and the corresponding log value
    procedure LogTable(start,stop: in float) is
    begin
        s := start;
        -- while loop
        while s <= stop loop
            Put(" The logarithm of ");
            Put(s, 1, 1, 0);
            Put(" is ");
            total := log(s,10.0);
            Put(total, 1, 5, 0);
            New_Line;
            s := s + 0.5;
        end loop;
    end LogTable;

begin 
  
    -- prompt user to give values for height and width
    New_Line;
    Put_Line(" To compute logarithms: ");
    Put(" Enter start value: ");
    Get(start);
    Put(" Enter stop value: ");
    Get(stop);
   
    -- calling the function RectangleArea
    LogTable(start,stop);

    New_Line;

end log_table;
