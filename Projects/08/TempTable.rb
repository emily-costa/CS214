#############################################
# Emily Costa
# 4/14/2020
# Project 8
# TempTable.rb 
#############################################
load 'Temperature.rb'

# make new Temperature object
def make()
	print "Enter temperature: "
	inputString = gets
	temp = inputString.split(' ')
	temp1 = Temperature.new(temp[0],temp[1])
end

def main
	# scan in values
	print "\nbaseTemp -> "
	baseTemp = make()
	print "limitTemp -> "
	limitTemp = make()
	print "stepValue -> Enter value: "
	stepValue = gets.to_f

	temp1 = baseTemp;
	temp2 = baseTemp;

	# loop to print table
	if (baseTemp.equals(baseTemp,limitTemp) == true)
		convertTempF = baseTemp.convertF()
		convertTempC = baseTemp.convertC()
		convertTempK = baseTemp.convertK()
		print "#{convertTempF.print}\t#{convertTempC.print}\t#{convertTempK.print}\n"
		
	elsif (baseTemp.less_than(baseTemp,limitTemp) == true)
		while (baseTemp.less_than(temp1,limitTemp) == true) do
			convertTempF = temp1.convertF()
			convertTempC = temp1.convertC()
			convertTempK = temp1.convertK()
			print "#{convertTempF.print}\t#{convertTempC.print}\t#{convertTempK.print}\n"
			temp1 = temp2.raise(stepValue)
			temp2 = temp1
		end 
		convertTempF = limitTemp.convertF()
		convertTempC = limitTemp.convertC()
		convertTempK = limitTemp.convertK()
		print "#{convertTempF.print}\t#{convertTempC.print}\t#{convertTempK.print}\n"

	elsif (baseTemp.less_than(baseTemp,limitTemp) == false)
		while (baseTemp.less_than(temp1,limitTemp) == false) do
			convertTempF = temp1.convertF()
			convertTempC = temp1.convertC()
			convertTempK = temp1.convertK()
			print "#{convertTempF.print}\t#{convertTempC.print}\t#{convertTempK.print}\n"
			temp1 = temp2.lower(stepValue)
			temp2 = temp1
		end 
		convertTempF = limitTemp.convertF()
		convertTempC = limitTemp.convertC()
		convertTempK = limitTemp.convertK()
		print "#{convertTempF.print}\t#{convertTempC.print}\t#{convertTempK.print}\n"
	end

end # end main

main

