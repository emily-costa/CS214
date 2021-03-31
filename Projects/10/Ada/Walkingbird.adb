-- walkingbird.adb gives walking definitions for bird subclass
--  by redefining Bird-related definitions.
--
-- Completed by: Emily Costa
-- Date: 4/28/2020
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Walkingbird is

    function Movement(A_Bird : in Walkingbird_Type) return String is
    begin
        return " walks past";
    end Movement;


end Walkingbird;