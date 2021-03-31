-- TempTable.ads decalres the Temperature type and its operations
-- Emily Costa
-- 4/15/2020
-- Project 08
------------------------------------------------------------------

package temp_table is

    type Temperature is private;

    procedure Init(temp: out Temperature; deg : in float; sc : in character);
    procedure Print(temp: in Temperature);
    function convertF(temp: in Temperature) return Temperature; 
    function convertC(temp: in Temperature) return Temperature;
    function convertK(temp: in Temperature) return Temperature;
    function raise_temp(temp: in Temperature; step: in float) return Temperature;
    function lower_temp(temp: in Temperature; step: in float) return Temperature;
    function equals(temp1,temp2: in Temperature) return Boolean; 
    function less_than(temp1,temp2: in Temperature) return Boolean;
    
    private 
        type Temperature is record
            degrees : float;
            scale : character;
        end record;

end temp_table;