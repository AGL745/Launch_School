# Launch School
# Exercises Medium 2 - Lesson 3
# AGL

#Question 1: Figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

# My answer
sum = 0
munsters.each do |name, values|
  if values["gender"] == "male"
    sum += values["age"]
  end
end
p sum

#Launch answer
total_male_age = 0
munsters.each do |name, values|
  total_male_age += values["age"] if values["gender"] == "male"
end

#Question 2: Given this previously seen family hash, print out the name, age and gender of each family member:
#(Name) is a (age) year old (male or female).

#My answer
munsters.each do |key, values|
   puts "#{key} is a #{values["age"]} year old #{values["gender"]}."
end

#Launch Answer
munsters.each_pair do |name, values| 
  puts "#{name} is a #{values["age"]} year old #{values["gender"]}."
end

#Question 3:
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]

tricky_method(my_string, my_array)

puts "My string: #{my_string}."
puts "My array: #{my_array}."

#Question 4: 
#A common idiom used to solve this conundrum is to use the String#split in conjunction with Array#join methods to break our string up and then put it back together again.
#Use this technique to break up the following string and put it back together with the words in reverse order:

sentence = "Humpty Dumpty sat on a wall."

#My Answer
puts sentence.split().reverse.join(" ")

#Launch Answer

words = sentence.split(/\W/)
#/\w/ - A word character ([a-zA-Z0-9_])
#/\W/ - A non-word character ([^a-zA-Z0-9_]). Please take a look at Bug #4044 if using /\W/ with the /i modifier.
words.reverse!
backwards_sentence = words.join(' ')

#Question 5: What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end
new_answer = mess_with_it(answer)
p answer - 8
#Returns 34

#Question 6: 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

puts mess_with_demographics(munsters)

#Family data is passed as a reference in this case because it's to a method. The method is directly manipulating the munsters reference ids

#Question 7:

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

#Question 8: 

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

#foo returns yes always.. so bar will be false or no