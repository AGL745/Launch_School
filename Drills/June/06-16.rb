#Comment
print "Enter a value: "

#variables
#first_num = gets.to_i
first_num = 2
print "Enter another value: "
#_second_num = gets.to_i
_second_num = 4
puts first_num.to_s + " + " + _second_num.to_s + " = " + 
(first_num + _second_num).to_s 

# Five Types of operators (addition, subraction, multiplt, divid modulus)
p '4 + 4 = ', 4+4

#Floats and Integers
num_one = 1.000
num999 = 0.999

p num_one.to_s + " + " + num999.to_s + " = " + (num_one + num999).to_s

#Everything is an object
puts 1.class
puts 1.234.class
puts "hello".class

#Variable typers
A_CONSTANT = 31.4
#Still can be changed will prompt warning
A_CONSTANT = 20


#Handing File Objects
write_handler = File.new("yourSum.out", "w")
write_handler.puts("Random Text").to_s
write_handler.close
data_from_file = File.read("yourSum.out")
puts "Data From File : " + data_from_file

#Load and execute code from another file
load "ruby_or_not2.rb"

#Multiline comment
=begin
Check out 
my comment
=end

#Conditional Operations

age = 12
if(age >= 5) && (age <= 6)
  puts "You're in Kindergarten"
elsif (age >= 7) && (age <= 13)
  puts "You're in Middle School"
  puts "yeah"
else
  puts "Stay home"
end

=begin
#Comparison Operators
Comparison : == != < > <= >=
Logical : && || ! .. and or not
=end

puts "true && false = " + (true && false).to_s
puts "true || false = " + (true || false).to_s
#puts "!false = " + !false.to_s

#return 0 if equal 1 if first number is greater -1 if second num is greater
puts "5 <=> 10 = ", (5 <=> 10)

tim = 10

unless tim > 55
  puts "No School"
else
  puts "Go to school"
end

puts "You're young" if age < 30

#Case statement comparison
print "Enter language (french, spanish, english) : "
greeting = gets.chomp 

case greeting
when "f", "French", "french"
  puts "Bojour"
when "Spanish", "spanish", "s"
  puts "Hola"
else "English"
  puts "Hello"
end


#Ternary Operator, provides dif input pending condition
puts (age >= 50) ? "Old" : "Young"
puts (true) ? "True" : "False"
puts (false) ? "True" : "False"

#Do while loop
x = 1
loop do
  x += 1
  next unless (x % 2) == 0
  p x
  break if x >= 10
end

#while loop
y = 1
while y <= 7
  y += 1
  next unless (y % 2) == 0
  p y
  break if y >= 9
end

#Until Loop
a = 1
until a >= 10
a += 1
next unless (a % 2) == 0
p a
end

#Arrays
numbers = [1,2,3,4,5]

for num in numbers 
  print "#{num}, "
end

groceries = ["bananas", "plaintains", "eggs", "bread"]

groceries.each do |food|
  puts "Get some #{food}."
end

#range
(0..5).each { |i| print "# #{i}"}

#Functions - variables are passed by value not reference
def add_num(num_1, num_2)
  return num_1.to_i + num_2.to_i
end

puts add_num(3,4)

x = 1
def change_x(x)
  x  = 4
end

change_x(x)
puts "Value of x is #{x}"

#Exceptions begin and rescue
print "Enter a number: "
my_num = 10
print "Enter second number: "
my_num2 = 20

begin 
  answer = my_num / my_num2
  
rescue
  puts "Can't divide by zero"
  break
end
# puts "{}"

new_age = 28
def check_age(age)
  raise ArgumentErrorm "Enter positive number" unless age > 0
end

begin
  check_age(-1)
rescue ArgumentError
  puts "This is an impossible age"
end





  
