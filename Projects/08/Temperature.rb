#############################################
# Emily Costa
# 4/14/2020
# Project 8
# Tempperature.rb 
#############################################

class Temperature

	def initialize(degrees,scale)
		@degrees, @scale = degrees, scale
	end

	attr_reader :degrees, :scale

	# convert temp into Fahrenheit
	def convertF()
		if scale == 'C' || scale == 'c'
			newDegree = (degrees.to_f * (9.0/5.0)) + 32.0
		elsif scale == 'K' || scale == 'k'
			newDegree = (degrees.to_f - 273.15) * (9.0/5.0) + 32.0
		else
			newDegree = degrees.to_f
		end
		newTemp = Temperature.new(newDegree,'F')
	end
	# convert temp into Celsius
	def convertC()
		if scale == 'F' || scale == 'f'
			newDegree = (degrees.to_f - 32.0) * (5.0/9.0)
		elsif scale == 'K' || scale == 'k'
			newDegree = (degrees.to_f - 273.15)
		else
			newDegree = degrees.to_f
		end
		newTemp = Temperature.new(newDegree,'C')		
	end
	# convert temp into Kelvin
	def convertK()
		if scale == 'F' || scale == 'f'
			newDegree = (degrees.to_f - 32.0) * (5.0/9.0) + 273.15
		elsif scale == 'C' || scale == 'c'
			newDegree = (degrees.to_f + 273.15)
		else
			newDegree = degrees.to_f
		end
		newTemp = Temperature.new(newDegree,'K')		
	end
	# return string to print
	def print
		return "%.2f#{scale}" % degrees
	end
	# raise degrees by step value
	def raise(step)
		newTemp = Temperature.new(degrees.to_f + step, scale)
	end
	# lower decrees by step value
	def lower(step)
		newTemp = Temperature.new(degrees.to_f - step, scale)
	end
	# compare 2 temps to see if equal
	def equals(temp1, temp2)
		temp1F = temp1.convertF()
		temp2F = temp2.convertF()
		if temp1F.degrees == temp2F.degrees
			return true 
		end
		return false
	end
	# compare 2 temps to see if less than
	def less_than(temp1, temp2)
		temp1F = temp1.convertF()
		temp2F = temp2.convertF()
		if temp1F.degrees < temp2F.degrees
			return true 
		end
		return false
	end
end