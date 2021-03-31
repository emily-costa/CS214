# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the Walkingbird superclass.
#
# Completed by: Emily Costa
# Date: 4/27/2020
####################################################

require './Walkingbird.rb'

class Ostrich < Walkingbird

    def initialize(name)
        @name = name
    end

    def className
        "Ostrich"
    end

    def call
        "Snork!"
    end

end