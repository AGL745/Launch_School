
# Launch School
# Exercises 2 - Lesson 3
#  Allan Latty


# Exercise 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Exercise 2
puts flintstones << "Dino"

#Exercise 3
puts flintstones << "Dino", "Hoppy"
flintstones.push("Hoppy")
flintstones.concat(["Dino", "Hoppy"])

#Question 4
advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!("Few things in life are as important as ")
#Bonus - The caller is not mutated (passed by value not by reference)

#Launch Anser
advice.slice(0, advice.index("house"))

#Question 5
statement = "The Flintstones Rock!"

#My answer
puts statement.count("t")

#Launch answer
puts statement.scan("t").count

#Exercise 6
title = "Flintstone Family Members"
puts title.center(40)