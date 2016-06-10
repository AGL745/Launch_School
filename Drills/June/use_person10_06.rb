# June 10 2016 Practice
# Object oriented programming
# AGL

			# Objectives
# Creating objects inside separate document
#  Reference that class in other file
#  		- Utilize setter and getter methods
#  		- Utilize attr_accessor keyword
#  Create and instance of that class
#  		- Require outside file
#  		- Instantiate new class 
#  		- Set values inside class


require_relative "Person10_06"

Gman = Person.new

Gman.name = "Gadman"
Gman.age = 30
Gman.fav_food = {:type => ["Pizza", "Ice-Cream", "Donuts", "Salad"]}
Gman.set_fav_color = "Red" #using setter
Gman.set_brother = "Ben"

puts Gman.name
puts Gman.age
puts Gman.fav_food[:type][3]
puts Gman.get_fav_color #using getter

