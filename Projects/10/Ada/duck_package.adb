-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Emily COsta
-- Date: 4/28/2020
---------------------------------------------------

package body Duck_Package is

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
 function Call(A_Duck : in Duck_Type) return String is
 begin
    return "Quack!";
 end Call;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
 function Type_Name(A_Duck : in Duck_Type) return String is
 begin
    return "Duck";
 end Type_Name;


end Duck_Package;

