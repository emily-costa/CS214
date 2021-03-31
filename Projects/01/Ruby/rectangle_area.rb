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
