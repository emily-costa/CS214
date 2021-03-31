-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Completed by: Emily Costa
-- Date: 4/22/20220
---------------------------------------------------

with Flyingbird;
use Flyingbird; 

package Duck_Package is

    type Duck_Type is new Flyingbird_Type with private;

    function Call(A_Duck : in Duck_Type) return String;
    function Type_Name(A_Duck : in Duck_Type) return String;

private
    type Duck_Type is new Flyingbird_Type with
    record 
        null;
    end record;
end Duck_Package;
