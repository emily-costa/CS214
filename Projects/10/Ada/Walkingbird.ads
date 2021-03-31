-- Walkingbird_package.adb subclass of Bird
--
-- Completed by: Emily Costa
-- Date: 4/28/2020
---------------------------------------------------
with Bird_Package;
use Bird_Package;

package Walkingbird is

    type Walkingbird_Type is new Bird_Type with private;

    function Movement(A_Bird : in Walkingbird_Type) return String;

    private 
        type Walkingbird_Type is new Bird_Type with
        record
           null;
        end record;

end Walkingbird;