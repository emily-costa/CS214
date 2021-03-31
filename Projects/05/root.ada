-- Emily Costa
-- March 11, 2020
-- CS 214 A
-- Project 5 -
-- Calculate the roots using the quadratic equaiton
-- given values for a, b, and c from the user
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

-- start of main function
procedure root is

    -- declaring variables
    a, b, c, disc : float;
    type IntArray is array(1..3) of float;
    resultArray : IntArray;

    -- function calculate to calculate roots
    procedure calculate(a,b,c: in float; results: out IntArray) is
    begin
        disc := (b ** 2) - (4.0 * a * c);
        if (disc < 0.0) then
            results(1) := 0.0;
        elsif (disc = 0.0) then
            results(1) := 1.0;
            results(2) := (-b + Sqrt(disc)) / (2.0 * a);
        elsif (disc > 0.0) then
            results(1) := 2.0;
            results(2) := (-b + Sqrt(disc)) / (2.0 * a);
            results(3) := (-b - Sqrt(disc)) / (2.0 * a);
        end if;


    end calculate;

begin

    -- promt user and scan in input
    New_Line;
    Put_Line(" To calculate the root(s): ");
    Put(" Enter a value for a, b, and c: ");
    Get(a);
    Get(b);
    Get(c);

    -- call fucntion to calculate root values
    calculate(a,b,c,resultArray);
    
    -- if statment to print proper results
    if (resultArray(1) = 0.0) then
        Put(" There are no real solutions.");
    elsif (resultArray(1) = 1.0) then
        Put(" The root is: ");
        Put(resultArray(2), 1, 2, 0);
    elsif (resultArray(1) = 2.0) then
        Put(" The roots are: ");
        Put(resultArray(2), 1, 2, 0);
        Put (" and ");
        Put(resultArray(3), 1, 2, 0);
    end if;

    New_Line;
    New_Line;

end root;

