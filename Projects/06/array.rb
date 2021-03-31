# Emily Costa
# 214 A
# March 18, 2020
# Project 06 - read in an array from keyboard from user
# and print the values
###############################################################

# function printArray returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.

def printArray(anArray, size)
    print " The array's values are: "

    anArray.each do |i|
        print i
        print " "
    end

end

def inputArray(anArray, size)

    for i in 0..size do
        print " Enter a value: "
        num = gets.chomp.to_f
        anArray[i] = num    
    end
    
end

if __FILE__ == $0
   print "\n Enter the number of values in the array: "
   userSize = gets.chomp.to_f
   userSize = userSize - 1
   userArray = Array.new(userSize)
   inputArray(userArray, userSize)
   printArray(userArray, userSize)
   puts "\n\n"
end