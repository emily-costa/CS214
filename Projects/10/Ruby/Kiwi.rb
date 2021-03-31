# Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
#   from the Walkingbird superclass.
#
# Completed by: Emily Costa
# Date: 4/27/2020
####################################################

require './Walkingbird.rb'

class Kiwi < Walkingbird

    def initialize(name)
        @name = name
    end

    def className
        "Ostrich"
    end

    def call
        "Whoo-hoo!"
    end

end