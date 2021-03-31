-- penguin_package.ads gives penguin-related declarations,
--  and derives penguin from walkingbird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Emily Costa
-- Date: 4/28/2020
---------------------------------------------------

with Walkingbird;
use Walkingbird;

package Penguin_Package is

    type Penguin_Type is new Walkingbird_Type with private;


 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())       -
 -- Receive: A_Penguin, a Penguin_Type.             -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
 function Call(A_Penguin : in Penguin_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Penguin                      -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, an Penguin_Type.             -
 -- Return: "Penguin".                               -
 -----------------------------------------------------
 function Type_Name(A_Penguin : in Penguin_Type) return String;

private

    type Penguin_Type is new Walkingbird_Type with
    record
        null;
    end record;


end Penguin_Package;
