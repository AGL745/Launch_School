
# Launch School
# Exercises 2 - Lesson 3
#  AGL


# Exercise 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages["Spot"]

puts ages.fetch("Herman")
puts ages.key?("Spot")
puts ages.member?("Spot")
puts ages.include?("Spot")

#Exercise 2

ages2 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#My answer
age_sum = 0
ages2.each_value { |value| age_sum += value}
puts age_sum

puts ages2.each_value.reduce(:+)

#Launch Answer
puts ages.each_value.inject(:+)

#Exercise 3

ages3 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts ages3.delete_if { |key, value|  value > 100 }

 ages3.each do |key, value|
 	if ages3[key] > 100
 		ages3.delete(key)
 		puts key, value
 	end
 end

 #Launch Answer
 puts ages3.keep_if { | key, value | value < 100}

 #Question 4
munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.capitalize()
puts munsters_description.swapcase()
puts munsters_description.downcase()
puts munsters_description.upcase()

#Exercise #5
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
puts ages

# Exercise 6
ages4 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# My Answer
puts ages4.each.min_by(1){|key| key}

# Launch Answer
ages4.values.min

#Exercise 7
advice = "Few things in life are as important as house training your pet dinosaur."

#My answer
puts advice.include?("Dino")

#Launch Answer
puts advice.match("Dino")

#Exercise 8
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#My answer tried regular expression (fail)
flintstones.keep_if { |value| value = /["Be"]/}

#Launch Answer
puts flintstones.index { |name| name[0,2] == "Be"}

#Question 9
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.map! {|value| value.slice(0,3)}

#Launch
flintstones.map! do | name |
  puts name[0,3]
end

#Question 10
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#My answer both () and [] work here
puts flintstones.map! {|value| value.slice(0,3)}

puts flintstones.map! {|value| value.slice(0,3)}
