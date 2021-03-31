#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Emily Costa
# Date: Feb 7 2020
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.

# giving PI a value 
PI = 3.1415927
# defining the function circleArea
def circleArea(r)
    #calculating the area and returning this value
    PI * r ** 2 
end

if __FILE__ == $0

   # Printing the string then new line
   puts "To compute the area of a circle,"
   # Printing string
   print "enter its radius: "
   # calling function to read in user input for radius value
   radius = gets.chomp.to_f
   # printing the string
   print "The circle's area is: "
   # calling the function to calculate the Area and then print the returned value for area
   puts circleArea(radius)
end
