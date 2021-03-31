# Flyingbird.rb | Defines the Flyingbird class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Emily Costa
# Date: 4/27/2020
####################################################

require './Bird.rb'

class Flyingbird < Bird

    def initialize(name)
        @name = name
      end

    def movement
        "flies past"
    end

end