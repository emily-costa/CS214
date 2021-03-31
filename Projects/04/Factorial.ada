-- Emily Costa
-- March 4, 2020
-- CS 214 A
-- Project 4 - given an integer n, returns n!
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

-- start of main function
procedure Factorial is

    -- declaring integer variables
    n, total : float;

    -- function calc_factorial take in n and return n!
    function calc_factorial(n: in float) return float is
    begin
    total := 1.0;
    -- for loop to calculate
    for count in 1..Integer(n)
    loop
        total := total * float(count);
    end loop;
    return total;
    end calc_factorial;

begin
    -- promt user and scan in input
    New_Line;
    Put(" To compute n!, enter n: ");
    Get(n);

    -- calling fucntion to calculate n! and print result
    total := calc_factorial(n);
    Put(" The factorial is: ");
    Put(total,0,0,0);
    New_Line;
    New_Line;

end Factorial;

