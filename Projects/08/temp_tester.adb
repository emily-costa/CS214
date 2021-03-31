-- temp_tester.adb the Temperature Type
-- 4/15/2020
-- Emily Costa
-- Project 08
------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO, temp_table;
use  Ada.Text_IO, Ada.Float_Text_IO, temp_table;

procedure temp_tester is

    baseTemp, limitTemp, temp1, temp2: temp_table.Temperature;
    stepValue: float;
    length : integer;
    deg: float;
    sc: string(1..2);
    sc1: character;
    --eq: Boolean;

begin
    -- Get basetemp
    Put("baseTemp -> ");
    Get(deg);
    Get_line(sc,length);
    sc1 := sc(sc'last);
    Init(baseTemp,deg,sc1);
    -- Get limitTemp
    Put("limitTemp -> ");
    Get(deg);
    Get_line(sc,length);
    sc1 := sc(sc'last);
    Init(limitTemp,deg,sc1);
    -- Get stepValue
    Put("stepValue -> ");
    Get(stepValue);

    temp1 := baseTemp;
    temp2 := baseTemp;

    if (equals(baseTemp,limitTemp)) = True then
        New_line;
        Print(convertF(baseTemp)); Put(" "); 
        Print(convertC(baseTemp)); Put(" ");
        Print(convertK(baseTemp)); Put(" ");    
    elsif (less_than(baseTemp,limitTemp)) = True then
        while (less_than(temp1,limitTemp)) = True loop
            New_line;
            Print(convertF(temp1)); Put(" "); 
            Print(convertC(temp1)); Put(" ");
            Print(convertK(temp1)); Put(" ");
            temp1 := raise_temp(temp2,stepvalue);
            temp2 := temp1;
        end loop;  
        New_line;
        Print(convertF(limitTemp)); Put(" "); 
        Print(convertC(limitTemp)); Put(" ");
        Print(convertK(limitTemp)); Put(" ");
    elsif (less_than(baseTemp,limitTemp)) = False then    
        while (less_than(temp1,limitTemp)) = False loop
            New_line;
            Print(convertF(temp1)); Put(" "); 
            Print(convertC(temp1)); Put(" ");
            Print(convertK(temp1)); Put(" ");
            temp1 := lower_temp(temp2,stepvalue);
            temp2 := temp1;
        end loop;
        New_line;
        Print(convertF(limitTemp)); Put(" "); 
        Print(convertC(limitTemp)); Put(" ");
        Print(convertK(limitTemp)); Put(" ");
    end if;
    New_line;
end temp_tester;
