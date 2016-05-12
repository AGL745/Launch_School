# return.rb

def add_three(number)
  number+3
end

returned_value = add_three(4)
puts returned_value

#Chaining methods -- one liner
add_three(3).times { puts "Hello!"}

#OR
add_three(3).times do
  puts "Hello"
end

def add_three(n)
  new_value = n + 3
  puts new_value
  #implicit return value
  new_value
end
add_three(3)

def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def multiply(x,y)
  x*y
end

puts multiply(add(4,5),subtract(2,3))
