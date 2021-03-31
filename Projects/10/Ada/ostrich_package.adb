-- ostrich_package.adb gives ostrich-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Emily Costa
-- Date: 4/28/2020
---------------------------------------------------

package body Ostrich_Package is

 function Call(An_Ostrich : in Ostrich_Type) return String is
 begin
    return "Snork!";
 end Call;

 function Type_Name(An_Ostrich : in Ostrich_Type) return String is
 begin
    return "Ostrich";
 end Type_Name;


end Ostrich_Package;
