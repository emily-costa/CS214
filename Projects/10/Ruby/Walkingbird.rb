# WalkingBird.rb | Defines the Walkngbird class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Emily Costa
# Date: 4/27/2020
####################################################

require './Bird.rb'

class Walkingbird < Bird

    def initialize(name)
        @name = name
    end

    def movement
        "walks past"
    end

end