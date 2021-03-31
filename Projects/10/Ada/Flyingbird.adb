--  flyingbird.adb gives flying definitions for bird subclass
--  by redefining Bird-related definitions.
--
-- Completed by: Emily Costa
-- Date: 4/28/2020
---------------------------------------------------

package body Flyingbird is

    function Movement(A_Bird : in Flyingbird_Type) return String is
    begin
        return " flies past";
    end Movement;


end Flyingbird;