-- kiwi_package.ads gives kiwi-related declarations,
--  and derives Ostrich from walkingbird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Emily Costa
-- Date: 4/28/2020
---------------------------------------------------

with Walkingbird;
use Walkingbird;

package Kiwi_Package is

    type Kiwi_Type is new Walkingbird_Type with private;

    function Call(A_Kiwi : in Kiwi_Type) return String;

    function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private

    type Kiwi_Type is new Walkingbird_Type with
    record
        null;
    end record;


end Kiwi_Package;
