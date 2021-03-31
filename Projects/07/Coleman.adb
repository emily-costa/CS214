-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Coleman Ulry
-- Date: 4-5-20
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : constant Integer := 8;
  newFirst, newMiddle, newLast : String := "        ";
  Chars : Natural;

  type Name is 
    record
        MyFirst : String( 1..NAME_SIZE );
        MyMiddle : String( 1..NAME_SIZE );
        MyLast : String( 1..NAME_SIZE );
    end record;

  aName : Name ;


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  procedure Init (TheName : out Name; First, Middle, Last : in String) is
    begin 
        TheName.MyFirst := First;
        TheName.MyMiddle := Middle;
        TheName.MyLast := Last;
  end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst     -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

  function getFirst(TheName : in Name) return String is
  begin
    return TheName.myFirst;
  end getFirst;

  function getMiddle(TheName : in Name) return String is
  begin
    return TheName.myMiddle;
  end getMiddle;

  function getLast(TheName : in Name) return String is
  begin
    return TheName.myLast;
  end getLast;

  procedure setFirst(TheName : out Name; newFirst : in String) is
  begin
    TheName.MyFirst := newFirst;
  end setFirst;

  procedure setMiddle(TheName : out Name; newMiddle : in String) is
  begin
    TheName.MyMiddle := newMiddle;
  end setMiddle;

  procedure setLast(TheName : out Name; newLast : in String) is
  begin
    TheName.MyLast := newLast;
  end setLast;

  function lfmi(TheName : in Name) return String is
  begin 
    return TheName.MyLast & TheName.MyFirst & TheName.MyMiddle(1);
  end lfmi;

  procedure readName(TheName : out Name) is
  begin
    Put("Enter your first name: ");
    Get_Line(newFirst, Chars);
    TheName.MyFirst := newFirst;

    Put("Enter your middle name: ");
    Get_Line(newMiddle, Chars);
    TheName.MyMiddle := newMiddle;

    Put("Enter your last name: ");
    Get_Line(newLast, Chars);
    TheName.MyLast := newLast;

  end readName;

  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  function getFullName(TheName : in Name) return String is
  begin
    return TheName.myFirst & " " & TheName.myMiddle & " " & TheName.myLast;
  end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

  procedure Put(TheName : in Name) is
  begin
    Put(TheName.myFirst & " " & TheName.myMiddle & " " & TheName.myLast);
  end Put;

begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ",
                    "getFullName() failed");

   setFirst(aName, "Adam");
   pragma Assert( getFirst(aName) = "Adam    ", "getFirst() (2) failed");

   setMiddle(aName, "Scott");
   pragma Assert( getMiddle(aName) = "Scott    ", "getMiddle() (2) failed");

   setLast(aName, "Smith");
   pragma Assert( getLast(aName) = "Smith    ", "getLast() (2) failed");

   pragma Assert( lfmi(aName) = "SAS");

  -- THESE ASSERTIONS WILL PASS IF YOU ENTER COLEMAN THOMAS ULRY
   readName(aName);
   pragma Assert( getFirst(aName) = "Coleman    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Thomas    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Ulry   ", "getLast() failed");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;
