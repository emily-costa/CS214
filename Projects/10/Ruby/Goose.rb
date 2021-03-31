# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Flyingbird superclass.
#
# Completed by: Emily Costa
# Date: 4/27/2020
####################################################

require './Flyingbird.rb'

class Goose < Flyingbird

    def initialize(name)
        @name = name
    end

    def className
        "Goose"
    end

    def call
        "Honk!"
    end

end