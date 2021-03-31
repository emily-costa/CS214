# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Emily COsta
# Date: 4-22-20
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

    def print
        puts name + " " + className + ' says "' + call + '"'
    end
  
  end