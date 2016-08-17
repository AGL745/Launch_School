# Launch School
# Exercises Medium 1 - Lesson 3
# AGL

# Question 1: What do you expect to happen when the greeting variable is referenced in the last line of the code below?

=begin
if false
  greeting = “hello world”
end

greeting
=end

# Nothing greeting is nil here because if block is not initiated

# Question 2:  Result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting #  => "hi there"
puts greetings, "\n"

# points the informal_greeting to the same object_id then modifies the object_id by shoveling in "there". Since hashes are containers element is added

# Question 3:
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = 'one'
two = 'two'
three = 'three'

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

# Question 4:  Write a method that returns UUID when called

# My first answer didn't really understand the question
def uuid_method
  sum = [45]
  sum.object_id
end

puts uuid_method, "\n"

# Second attempt after seeing peaking at answer
def uuid_creator
  my_uuid1= []
  $hex_array = ("a".."f").to_a + (1..9).to_a
  def uuid_section_creator(section_count, my_uuid1)
    random_selector = Random.new
    section_count.times do |i|
    my_uuid1.push($hex_array[random_selector.rand(15)])
  end
end

def uuid_caller(my_uuid1)
  # UUID sections
  sections = [8,4,4,4,12]
  sections.each { | count | uuid_section_creator(count, my_uuid1)}
  p my_uuid1.insert(8,"-").insert(13,"-").insert(18,"-").insert(23,"-").join
  end
  uuid_caller(my_uuid1)
end
uuid_creator

# Launch Answer
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s}
  ("a".."f").each { |digit| characters << digit}

  uuid = ""
  sections = [8, 4 ,4,4,12]

  sections.each_with_index do | section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end
  puts uuid
end

generate_UUID

 # Question 5: You're not returning a false condition, and not handling the case that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)." Help Ben fix his code.

 # My Answer
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  # p dot_separated_words
  if dot_separated_words.size != 4
    puts "Current IP address format is incorrect: \n Standard Format: Class C IP addresses range from 192.0.0.x to 223.255.255.x"
    return false
  end
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless word.is_a? Numeric
  end
  true
end

dot_separated_ip_address?('123.123.123.123')