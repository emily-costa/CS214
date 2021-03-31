# Emily Costa
# 4/8/2020
# Project 7
########################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

# Replace this line with the declaration of class Name
class Name

	def initialize (first, middle, last)
		@first, @middle, @last = first, middle, last
	end

	attr_reader :first, :middle, :last

	def fullName
		return @first + " " + @middle + " " + @last
	end

	def print
		puts fullName
		return fullName
	end

	def changeFirst (newName)
		@first = newName
	end

	def changeMiddle (newName)
		@middle = newName
	end

	def changeLast (newName)
		@last = newName
	end

	def lfmi 
		return @last + " " + @first + " " + @middle[0,1]
	end

	def inputName
		puts "\nEnter first name: "
		newName = gets.chomp.to_s
		@first = newName

		puts "Enter middle name: "
		newName = gets.chomp.to_s
		@middle = newName

		puts "Enter last name: "
		newName = gets.chomp.to_s	
		@last = newName
	end

end

def testName
	name = Name.new("John", "Paul", "Jones")

    assert name.first == "John", "first failed"
    assert name.middle == "Paul", "middle failed"
    assert name.last == "Jones", "last failed"
    assert name.fullName == "John Paul Jones", "fullName failed"
    assert name.print == "John Paul Jones", "print failed"
   
   	print "All tests passed!\n"
   	# Change name to Emily Abby From Keyboard
   	name.inputName
	assert name.fullName == "Emily Abby Costa", "input name failed"
	# Change first name
	name.changeFirst("John") 
	assert name.fullName == "John Abby Costa", "change first failed"
	#Change middle name
	name.changeMiddle("Fitz") 
	assert name.fullName == "John Fitz Costa", "change first failed"
	#Change last name
	name.changeLast("Kennedy") 
	assert name.fullName == "John Fitz Kennedy", "change first failed"
	#Call lfmi function
	assert name.lfmi == "Kennedy John F"

	print "All tests passed!\n"

end

testName