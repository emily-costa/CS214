# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Completed by: Emily Costa
# Date: 4/27/2020
####################################################

class Bird

    attr_reader :name
  
    def initialize(name)
      @name = name
    end

    def call
        'Squaaaaawk!'
    end

    def className
        self.class.to_s
    end

    def movement
        "    "
    end

    def print
        puts name + " " + className + " " + movement + ' and says "' + call + '"'
    end
  
  end