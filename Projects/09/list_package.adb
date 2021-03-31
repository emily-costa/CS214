-------------------------------------------------------
-- list_package.adb defines Ada linked list operations.
-- Emily Costa
-- 22 April 2020
-- Project 09
-------------------------------------------------------

package body List_Package is
    
    procedure Init(A_List : out List) is
    begin
        A_List.Its_First := null;
        A_List.Its_Last := null;
        A_List.Its_Length := 0;
    end Init;

    function Empty(A_List : in List) return Boolean is
    begin
        return A_List.Its_Length = 0;
    end Empty;

    function Length(A_List : in List) return Integer is
    begin
        return A_List.Its_Length;
    end Length;

    procedure Append(A_Value : in Integer; A_List : in out List) is
        Temp_Ptr : constant Node_Ptr := new List_Node;
    begin
        Temp_Ptr.Its_Value := A_Value;
        Temp_Ptr.Its_Next := null;

        if A_List.Its_Length = 0 then
        A_List.Its_First := Temp_Ptr;
        else
        A_List.Its_Last.Its_Next := Temp_Ptr;
        end if;

        A_List.Its_Last := Temp_Ptr;

        A_List.Its_Length := A_List.Its_Length + 1;
    end Append;

    -- traverse through string search for num
    function SearchVal(A_List : in List; num : in Integer) return integer is
            Temp_Ptr : Node_Ptr := A_List.Its_First;
            i : integer := 0;
    begin
            while Temp_Ptr /= null loop
                if Temp_Ptr.Its_Value = num then
                    return i;
                else
                    Temp_Ptr := Temp_Ptr.Its_Next;
                    i := i + 1;
                end if;
            end loop;
            return -1;
    end SearchVal;

end List_package;