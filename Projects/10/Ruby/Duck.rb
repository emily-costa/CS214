# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Flyingbird superclass.
#
# Completed by: Emily Costa
# Date: 4/27/2020
####################################################

require './Flyingbird.rb'

class Duck < Flyingbird

    def initialize(name)
        @name = name
    end

    def className
        "Duck"
    end

    def call
        "Quack!"
    end

end