Script started on 2020-02-10 22:36:01-0500
]0;eac33@gold29: ~/Desktop/214/Projects/01/Ruby[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Ruby[00m$ cat script.rb[1P[1P[1P[1P[1P[1P[1@r[1@e[1@c[1@t[1@a[1@n[1@g[1@l[1@e[1@_[1@a[1@r[1@e[1@a.
# Project 1
# Emily Costa
# Feb 12 2020
###############################################################

# function rectangleArea returns a rectangle's area, given its height and width

def rectangleArea(h,w)
    h * w 
end

if __FILE__ == $0
   puts "\nTo compute the area of a rectangle,"
   print " enter its height: "
   height = gets.chomp.to_f
   print " enter its width: "
   width = gets.chomp.to_f
   print "\nThe circle's area is: "
   puts rectangleArea(height,width)
   print "\n"
end
]0;eac33@gold29: ~/Desktop/214/Projects/01/Ruby[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Ruby[00m$ ruby rectag ngle_area.rb

To compute the area of a rectangle,
 enter its height: 2
 enter its width: 3

The circle's area is: 6.0

]0;eac33@gold29: ~/Desktop/214/Projects/01/Ruby[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Ruby[00m$ ruby rectangle_area.rb

To compute the area of a rectangle,
 enter its height: 2.5
 enter its width: 2 3,6  .6

The circle's area is: 9.0

]0;eac33@gold29: ~/Desktop/214/Projects/01/Ruby[01;32meac33@gold29[00m:[01;34m~/Desktop/214/Projects/01/Ruby[00m$ xit   exit
exit

Script done on 2020-02-10 22:37:00-0500
