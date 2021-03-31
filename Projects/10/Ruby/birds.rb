# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Emily Costa
# Date: 4/27/2020
######################################################

require './Bird.rb'
require './Walkingbird.rb'
require './Flyingbird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Penny"
bird4.print

bird5 = Ostrich.new "Orville"
bird5.print

bird6 = Kiwi.new "Kevin"
bird6.print

puts "\nHope you enjoyed your time!\n"

puts "\n\n"