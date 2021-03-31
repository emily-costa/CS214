---------------------------------------------
-- search.adb finds the index of 99 in list
-- Emily Costa
-- 22 April 2020
-- Project 09
---------------------------------------------
with Ada.Text_IO, List_Package, Ada.Integer_Text_IO;
use Ada.Text_IO, List_Package, Ada.Integer_Text_IO;

procedure search is

    -- define four lists
    List1, List2, List3, List4 : List;

    begin
        Init(List1);
        Init(List2);
        Init(List3);
        Init(List4);

        Append(99, List1);          -- 99, 88, 77, 66, 55 
        Append(88, List1);           
        Append(77, List1); 
        Append(66, List1); 
        Append(55, List1); 
    
        Append(55, List2);          -- 55, 66, 77, 88, 99 
        Append(66, List2);         
        Append(77, List2); 
        Append(88, List2); 
        Append(99, List2); 
        
        Append(55, List3);          -- 55, 77, 99, 88, 66 
        Append(77, List3);          
        Append(99, List3); 
        Append(88, List3); 
        Append(66, List3); 

        Append(55, List4);          -- 55, 77, 98, 88, 66 
        Append(77, List4);          -- does not contain 99
        Append(98, List4); 
        Append(88, List4); 
        Append(66, List4); 

        -- print index of 99 in each list
        Put("Index of 99 in list1: ");  
        Put(SearchVal(List1, 99));
        New_Line; 
        Put("Index of 99 in list2: "); 
        Put(SearchVal(List2, 99));
        New_Line; 
        Put("Index of 99 in list3: ");
        Put(SearchVal(List3, 99));
        New_Line; 
        Put("Index of 99 in list4: ");
        Put(SearchVal(List4, 99));
        New_Line; 

end search;