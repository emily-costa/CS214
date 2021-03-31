Script started on 2020-02-06 22:43:48-0500
]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ruby[00m$ cat circle_area.rb
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
]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ruby[00m$ ruck  by curcle_area.rb
[1mTraceback[m (most recent call last):
ruby: [1mNo such file or directory -- curcle_area.rb ([1;4mLoadError[m[1m)
[m]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ruby[00m$ i ruby curcle_area.rb[1P[1@i
To compute the area of a circle,
enter its radius: 1
The circle's area is: 3.1415927
]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ruby[00m$ ruby circle_area.rb
To compute the area of a circle,
enter its radius: 2
The circle's area is: 12.5663708
]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ruby[00m$ ruby circle_area.rb
To compute the area of a circle,
enter its radius: 2.5
The circle's area is: 19.634954375
]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ruby[00m$ ruby circle_area.rb
To compute the area of a circle,
enter its radius: 4.99999
The circle's area is: 78.53950334104417
]0;eac33@gold30: ~/Desktop/214/Labs/Lab1/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/Lab1/Ruby[00m$ exit
exit

Script done on 2020-02-06 22:44:38-0500
