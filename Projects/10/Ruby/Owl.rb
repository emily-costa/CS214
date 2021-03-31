# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Emily Costa
# Date: 4/27/2020
####################################################

require './Flyingbird.rb'

class Owl < Flyingbird

    def initialize(name)
        @name = name
    end

    def className
        "Owl"
    end

    def call
        "Whoo-hoo!"
    end

end