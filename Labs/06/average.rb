# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Emily Costa
# Date: 13 March
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

# Define sum() method here
def sum (anArray)
  	result = 0
  	anArray.each { |num| result += num }

	return result
end

# Document and define average() method here
def average (anArray)
	if anArray.size <= 0 then
		return 0.0;
	else
		return sum(anArray) / Float(anArray.size);
	end
end

def main
   # Define array0 as an Array containing no values
   array0 = Array.new 
   # Define array1 as an Array containing 9.0, 8.0, 7.0, 6.0
   array1 = Array.new [9.0,8.0,7.0,6.0]

   puts "sum 0 is: #{ sum(array0) }\n"
   puts "sum 1 is: #{ sum(array1) }\n"

   puts "average 0 is: #{ average(array0) }\n"
   puts "average 1 is: #{ average(array1) }\n"
end

main