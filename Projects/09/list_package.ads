-------------------------------------------------------------------
-- list_package.ads declares an Ada linked list and its operations.
-- Emily Costa
-- 22 April 2020
-- Project 09
-------------------------------------------------------------------

package List_Package is
    -- the list-type itself (public)
    type List is private;

    procedure Init(A_List: out List);
    function Empty(A_List: in List) return Boolean;
    function Length(A_List : in List) return Integer;
    procedure Append(A_Value : in Integer; A_List: in out List);
    function SearchVal(A_List : in List; num : in Integer) return integer;

    private
        -- replace this line with a forward-dec of List_Node
        type List_Node;
        -- replace this line with a dec of Node_Ptr
        type Node_Ptr is access List_Node;
        -- replace this line with a full dec of List_Node
        type List_Node is
        record
            Its_Value : Integer;
            Its_Next : Node_Ptr;
        end record;
        -- replace this line with a full dec of List
        type List is
        record
            Its_First : Node_Ptr;
            Its_Last : Node_Ptr;
            Its_Length : integer;
        end record;

end List_package;