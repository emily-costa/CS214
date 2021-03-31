# Emily Costa
# Feb 21, 2020
# CS 214 A
# Lab 3 - Given a grade level (string) return the appropraite number code (int)
###############################################################################

#function YearCodes returns the integer value
def YearCodes(year)
	if year =~ /freshman/
		return 1
	elsif year =~ /sophomore/
		return 2
	elsif year =~ /junior/
		return 3
	elsif year =~ /senior/
		return 4
	else
		return 0
	end
end

if __FILE__==$0
	# promt user for input
	print "\n To compute the corresponding integer code: "
	print "\n Enter name of academic year: "

	year = gets
	# call YearCodes function and print result
	print " The integer code is: "  
	print YearCodes(year)
	print "\n\n"
end


