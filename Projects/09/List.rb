#######################################################
# List.rb implements a linked list structure in Ruby.
# Emily Costa
# 4/22/2020
# Project 09
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List
	# initialize list to be empty
	def initialize()
    	@first = nil
      	@last = nil
      	@length = 0
   	end

    attr_reader :length

   	def empty?
      	@length == 0
   	end

   	def append(value)
	    newNode = Node.new(value, nil)

	    if empty?
	        @first = newNode
	    else
	        @last.next = newNode      
	    end

	    @last = newNode
	    @length += 1
	   	self
   	end

   	def search(value)
   		index = 0
   		temp = @first
   		while !temp.nil?
   			if (temp.value == value) then
   				return index
   			else
   				temp = temp.next 
   				index = index + 1
   			end
   		end
   		return -1
   	end

   	class Node

      	def initialize(item,link)
         	@value = item
         	@next = link
      	end

      	attr_reader :value
      	attr_accessor :next
    end

end