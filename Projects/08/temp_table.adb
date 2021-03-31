-- TempTable.adb defines operations for the Temperature type
-- Emily Costa
-- 4/15/2020
-- Proejct 08
------------------------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

package body temp_table is

    newDegree : float;
    newTemp,convert1,convert2 : Temperature;

    procedure Init(temp: out Temperature; deg : in float; sc : in character) is
    begin
        temp.degrees := deg;
        temp.scale := sc;
    end Init;

    procedure Print(temp: in Temperature) is
    begin
        Put(temp.degrees,1,2,0);
        Put(temp.scale);
    end Print;

    function convertF(temp: in Temperature) return Temperature is
    begin
        if (temp.scale = 'C') or (temp.scale = 'c') then
            newDegree := temp.degrees * (9.0/5.0) + 32.0;
        elsif (temp.scale = 'K') or (temp.scale = 'k') then
            newDegree := (temp.degrees - 273.15) * (9.0/5.0) + 32.0;
        else   
            newDegree := temp.degrees;
        end if;

        Init(newTemp, newDegree,'F');
        return newTemp;
    end convertF;

    function convertC(temp: in Temperature) return Temperature is
    begin
        if (temp.scale = 'F') or (temp.scale = 'f') then
            newDegree := (temp.degrees - 32.0) * (5.0/9.0);
        elsif (temp.scale = 'K') or (temp.scale = 'k') then
            newDegree := (temp.degrees - 273.15);
        else   
            newDegree := temp.degrees;
        end if;
        
        Init(newTemp, newDegree,'C');
        return newTemp;
    end convertC;

    function convertK(temp: in Temperature) return Temperature is
    begin
        if (temp.scale = 'F') or (temp.scale = 'f') then
            newDegree := (temp.degrees - 32.0) * (5.0/9.0) + 273.15;
        elsif (temp.scale = 'C') or (temp.scale = 'c') then
            newDegree := (temp.degrees + 273.15);
        else
            newDegree := temp.degrees;
        end if;
    
        Init(newTemp,newDegree,'K');
        return newTemp;
    end convertK;

    function raise_temp(temp: in Temperature; step: in float) return Temperature is
    begin
        Init(newTemp, temp.degrees + step, temp.scale);
        return newTemp;
    end raise_temp;

    function lower_temp(temp: in Temperature; step: in float) return Temperature is
    begin
        Init(newTemp, temp.degrees - step, temp.scale);
        return newTemp;
    end lower_temp;

    function equals(temp1,temp2: in Temperature) return Boolean is
    begin
        convert1 := convertF(temp1);
        convert2 := convertF(temp2);

        if (convert1.degrees = convert2.degrees) then
            return True;
        end if;
        return False;
    
    end equals;

    function less_than(temp1,temp2: in Temperature) return Boolean is
    begin
        convert1 := convertF(temp1);
        convert2 := convertF(temp2);

        if (convert1.degrees < convert2.degrees) then
            return True;
        end if;   
        return False;

    end less_than;

end temp_table;