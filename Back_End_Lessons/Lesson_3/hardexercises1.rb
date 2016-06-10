# Launch School
# Exercises Medium 1 - Lesson 3
# AGL

#Question 1: What do you expect to happen when the greeting variable is referenced in the last line of the code below?

=begin
if false
  greeting = “hello world”
end

greeting
=end

#Nothing greeting is nil here because if block is not initiated 

#Question 2:  Result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings, "\n"

#points the informal_greeting to the same object_id then modifies the object_id by shoveling in "there". Since hashes are containers element is added

#Question 3: 
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}", "\n"

def mess_with_vars1(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars1(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}", "\n"

def mess_with_vars2(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars2(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}", "\n"

#Question 4:  Write a method that returns UUID when  called

# My first answer didn't really understand the question
def uuid_method
	sum = [45]
	return sum.object_id()
end

puts uuid_method

# Second attempt after seeing answer
def uuid_real

my_uuid1= []
=begin
def uuid_section_creator(section_count)
  section_count.times do |i|
  	my_uuid1.push(random_selector_num.rand(9))
  	my_uuid1.push(hex_letters[random_selector_let.rand(5)])
  end
  p my_uuid1
end
=end

def uuid_method2
	#UUID sections
	#divide sections by 2 to allow 1 letter and 1 number
  sections = [4,2,2,2,6]
  #possible hexadecimal character
  hex_letters = ("a".."f").to_a
  hex_numb = (1..9).to_a

  random_selector_let = Random.new
  random_selector_num = Random.new
  
  uuid_section_creator(2)
  p sections.each { | x | p x}
 #{|i| uuid_section_creator[i]}
   4.times do |i|
  	#p selector_array
  	my_uuid1.push(random_selector_num.rand(9))
  	my_uuid1.push(hex_letters[random_selector_let.rand(5)])
  end
 p uuid_method2
 my_uuid1
end
end
uuid_real