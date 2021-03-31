-- Emily Costa
-- 4/8/2020
-- Project 07
--------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure names is

    NAME_SIZE : constant Integer := 10;
    Chars : Natural;
    EMPTY_STRING : String := "          ";
    First, Middle, Last : String := EMPTY_STRING;

    -- definition of Name 
    type Name is
        record
            MyFirst : String (1..NAME_SIZE);
            MyMiddle : String (1..NAME_SIZE);
            MyLast : String (1..NAME_SIZE);
        end record;

    aName : Name;

    -- print function
    procedure Put (TheName : in Name) is
    begin
        Put (TheName.MyFirst);
        Put (TheName.MyMiddle);
        Put (TheName.MyLast);
    end Put;

    -- function to initialize Name
    procedure Init (TheName : out Name) is
    begin
        Put("Enter first name: ");
        Get_Line(First, Chars);
        Put("Enter middle name: ");
        Get_Line(Middle, Chars);
        Put("Enter last name: ");
        Get_Line(Last, Chars);

        TheName.MyFirst := First;
        TheName.MyMiddle := Middle;
        TheName.MyLast := Last;
    end Init;

    -- fuction to change first name
    procedure changeFirst (TheName : out Name) is
    begin
        Put("Enter new first name: ");
        Get_Line(First, Chars);
        TheName.MyFirst := First;
    end changeFirst;

    -- fuction to change middle name
    procedure changeMiddle (TheName : out Name) is
    begin
        Put("Enter new middle name: ");
        Get_Line(Middle, Chars);
        TheName.MyMiddle := Middle;
    end changeMiddle;

    -- fuction to change last name
    procedure changeLast (TheName : out Name) is
    begin
        Put("Enter new last name: ");
        Get_Line(Last, Chars);
        TheName.MyLast := Last;
    end changeLast;
 
    -- fucntion tonreturn last, first, and middle initial
    function lfmi (TheName : in Name) return String is
    begin
        return (TheName.MyLast & TheName.MyFirst & TheName.MyMiddle(1));
    end lfmi;

    -- start main function
    begin
        New_Line;

        -- call function to initialize Name
        Init(aName);
        Put(aName); New_Line;
        Put(lfmi(aName));

        -- call functions to change names
        New_Line; New_Line; 
        changeFirst(aName);
        Put(aName); New_Line; New_Line;
        changeMiddle(aName);
        Put(aName); New_Line; New_Line;
        changeLast(aName);
        Put(aName); New_Line; New_Line;
        
        -- call function to print last, first, middle initial
        Put(lfmi(aName));
        New_Line; New_Line;


end names;
