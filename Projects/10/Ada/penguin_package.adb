-- penguin_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Emily Costa
-- Date: 4/28/2020
---------------------------------------------------

package body Penguin_Package is

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())       -
 -- Receive: A_Penguin, an Penguin_Type.            -
 -- Return: "Huh-huh-huh!"                          -
 ----------------------------------------------------
 function Call(A_Penguin : in Penguin_Type) return String is
 begin
    return "Huh-huh-huh!";
 end Call;

 -----------------------------------------------------
 -- Determine type of a Penguin                      -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, an Penguin_Type.             -
 -- Return: "Penguin".                               -
 -----------------------------------------------------
 function Type_Name(A_Penguin : in Penguin_Type) return String is
 begin
    return "Penguin";
 end Type_Name;


end Penguin_Package;
