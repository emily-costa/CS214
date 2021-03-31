#######################################################
# search.rb searches through a linked list
# Emily Costa
# 4/22/2020
# Project 09
#######################################################

require './List'

list1 = List.new
list2 = List.new
list3 = List.new
list4 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)
list3.append(55).append(77).append(98).append(88).append(66) # doesn't have 99


puts
puts "Index of 99 in list1: #{list1.search(99)}"

puts "Index of 99 in list2: #{list2.search(99)}"

puts "Index of 99 in list3: #{list3.search(99)}"

puts "Index of 99 in list4: #{list4.search(99)}"
puts