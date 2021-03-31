# Penguin.rb | Defines the Penguin class which inherits attributes and methods
#   from the Walkingbird superclass.
#
# Completed by: Emily Costa
# Date: 4/27/2020
####################################################

require './Walkingbird.rb'

class Penguin < Walkingbird

    def initialize(name)
        @name = name
    end

    def className
        "Penguin"
    end

    def call
        "Huh-huh-huh!"
    end

end