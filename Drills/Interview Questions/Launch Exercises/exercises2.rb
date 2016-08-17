def teddy
  ran_age = rand(20..200)
  puts "Teddy is #{ran_age} years old."
end

# teddy

def teddy2(name = "Teddy")
  ran_age = rand(20..200)
  puts "#{name} is #{ran_age} years old."
end

teddy2('Mike')
teddy2

def big_room
  puts "Enter the length of the room in meters: "
  length_meters = gets.chomp.to_i
  puts "Enter the width of the room in meters: "
  width_meters = gets.chomp.to_i
  puts "The area of the room is #{length_meters * width_meters}" /
   "(#{(length_meters * width_meters) * 10.7639} square feet)."
end

# big_room

# Square Meter Problem
SQMETER_TO_SQFEET = 10.7639
def big_room2
  puts "Enter the length of the room in meters: "
  length = gets.to_f
  puts "Enter the width of the room in meters: "
  width = gets.to_f

  square_meters = (length * width).round(2)
  square_feet = (square_meters * SQMETER_TO_SQFEET).round(2)

  puts "The area of the room is #{square_meters} (#{square_feet} square feet)."
end

# big_room2

# Tip Calculator Problem

def tip_calc
  puts "What is the bill? "
  bill = gets.to_f
  puts "What is the tip percentage? "
  tip_percent = gets.to_f / 100

  tip = tip_percent * bill
  total = bill + tip
  puts "The total is $#{format('%.2f', total)}"
end
# tip_calc

# When will I retire

def retirement
  # Time.now synonym for Time.new
  current_year = Time.new.year
  puts "==> What is your age? "
  user_age = gets.chomp.to_i

  puts "==> At what age would you like to retire? "
  retirement_age = gets.chomp.to_i

  years_left = retirement_age - user_age
  puts "It's #{current_year}. You will retire in #{current_year + years_left}."

  puts "You only have #{years_left} years of work to go!"
end

# retirement

def greeter
  puts "==> What is your name? "
  user_name = gets.chomp
  if user_name[-1] == '!'
    user_name.upcase!
    user_name.delete!('!')
    # name = user_name.chop
    # name = user_name.chomp('!')
    puts "==> HELLO #{user_name}. WHY ARE WE SCREAMING?"
  else
    puts "==> Hello #{user_name}"
  end
end
# greeter

def odd_numbers
  (1..99).each do |numb|
    puts numb if numb.odd?
  end
end

def odd_numbers2
  value = 1
  while value <= 99
    puts value
    value += 2
  end
end
# odd_numbers

def odd_number3
  (1..99).step(2) { |numb| puts numb }
end

def odd_number4
  1.upto(99) { |numb| p numb if x.odd? }
end

def even_numbers
  (1..99).each { |numb| puts numb if numb.even? }
end

def even_number2
  (2..99).step(2) { |numb| puts numb }
end

def even_number3
  counter = 1
  while counter <= 99
    puts counter
    counter += 1
  end
end

def sum_product
  puts ">> Please enter an integer greater than 0"
  user_input = gets.chomp.to_i
  puts ">> Enter 's' to compute the sum, 'p' to compute the product. "
  user_select = gets.chomp.downcase

  if user_select == 's'
    sum = (1..user_input).inject(:+)
    puts ">> The sum of the integers between 1 and " \
    "#{user_input} is #{sum}."
  else
    product = (1..user_input).inject(:*)
    puts ">> The product of the integers between 1" \
    " and #{user_input} is #{product}."
  end
end
#sum_product

def mutation
  arr1 = %w(Moe Larry Curry Chemp Harpo Chico Groucho Zeppo)
  arr2 = []

  arr1.each { |x| arr2 << x }
  arr1.each { |x| x.upcase! if x.start_with?('C') }
  puts arr2
end
mutation
