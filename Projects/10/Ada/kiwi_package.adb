-- kiwi_package.adb gives kiwi-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Emily Costa
-- Date: 4/28/2020
---------------------------------------------------

package body Kiwi_Package is

 function Call(A_Kiwi : in Kiwi_Type) return String is
 begin
    return "Chichi!";
 end Call;

 function Type_Name(A_Kiwi : in Kiwi_Type) return String is
 begin
    return "Kiwi";
 end Type_Name;


end Kiwi_Package;
