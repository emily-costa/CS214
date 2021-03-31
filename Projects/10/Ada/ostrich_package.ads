-- ostrich_package.ads gives ostrich-related declarations,
--  and derives Ostrich from walkingbird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Emily Costa
-- Date: 4/28/2020
---------------------------------------------------

with Walkingbird;
use Walkingbird;

package Ostrich_Package is

    type Ostrich_Type is new Walkingbird_Type with private;

    function Call(An_Ostrich : in Ostrich_Type) return String;

    function Type_Name(An_Ostrich : in Ostrich_Type) return String;

private

    type Ostrich_Type is new Walkingbird_Type with
    record
        null;
    end record;


end Ostrich_Package;
