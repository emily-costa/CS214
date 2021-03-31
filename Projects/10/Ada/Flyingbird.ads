-- Flyingbird.ads subclass of Bird
--
-- Completed by: Emily Costa
-- Date: 4/28/2020
---------------------------------------------------
with Bird_Package;
use Bird_Package;

package Flyingbird is

    type Flyingbird_Type is new Bird_Type with private;

    function Movement(A_Bird : in Flyingbird_Type) return String;

    private 
        type Flyingbird_Type is new Bird_Type with
        record
           null;
        end record;

end Flyingbird;