Script started on 2020-02-20 01:07:32-0500
]0;eac33@gold30: ~/Desktop/214/Labs/03/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ruby[00m$ catyear     year_codes.rb
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


]0;eac33@gold30: ~/Desktop/214/Labs/03/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ruby[00m$ reuby    uby year.codes      _codes.rb

 To compute the corresponding integer code: 
 Enter name of academic year: freshman
 The integer code is: 1

]0;eac33@gold30: ~/Desktop/214/Labs/03/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ruby[00m$ ruby year_codes.rb

 To compute the corresponding integer code: 
 Enter name of academic year: sophomore
 The integer code is: 2

]0;eac33@gold30: ~/Desktop/214/Labs/03/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ruby[00m$ ruby year_codes.rb

 To compute the corresponding integer code: 
 Enter name of academic year: jn unior
 The integer code is: 3

]0;eac33@gold30: ~/Desktop/214/Labs/03/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ruby[00m$ ruby year_codes.rb

 To compute the corresponding integer code: 
 Enter name of academic year: senior
 The integer code is: 4

]0;eac33@gold30: ~/Desktop/214/Labs/03/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ruby[00m$ ruby year_codes.rb

 To compute the corresponding integer code: 
 Enter name of academic year: prek
 The integer code is: 0

]0;eac33@gold30: ~/Desktop/214/Labs/03/Ruby[01;32meac33@gold30[00m:[01;34m~/Desktop/214/Labs/03/Ruby[00m$ exit
exit

Script done on 2020-02-20 01:08:15-0500
