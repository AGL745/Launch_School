def number_check
  cont_arr = []

  puts "Enter the 1st number:"
  cont_arr.push(gets.chomp.to_i)
  puts "Enter the 2nd number:"
  cont_arr.push(gets.chomp.to_i)
  puts "Enter the 3rd number:"
  cont_arr.push(gets.chomp.to_i)
  puts "Enter the 4th number:"
  cont_arr.push(gets.chomp.to_i)
  puts "Enter the 5th number:"
  cont_arr.push(gets.chomp.to_i)
  puts "Enter the last number:"
  last_number = gets.chomp.to_i

  if cont_arr.include?(last_number)
    puts "The number #{last_number} appears in #{cont_arr}."
  else
    puts "The number #{last_number} does not appears in #{cont_arr}."
  end
end

def arithmetic_integer
  puts "==> Enter the first number: "
  first_number = gets.chomp.to_i
  puts "==> Enter the second number: "
  second_number = gets.chomp.to_i

  puts "==> #{first_number} + #{second_number} = #{first_number + second_number}"
  puts "==> #{first_number} - #{second_number} = #{first_number - second_number}"
  puts "==> #{first_number} * #{second_number} = #{first_number * second_number}"
  puts "==> #{first_number} / #{second_number} = #{first_number / second_number}"
  puts "==> #{first_number} % #{second_number} = #{first_number % second_number}"
  puts "==> #{first_number} ** #{second_number} = #{first_number**second_number}"
end
# arithmetic_integer

def word_count
  puts "==> Please write word or multiple words: "
  user_words = gets.chomp
  char_count = user_words.delete(" ").size
  puts "==> There are #{char_count} characters in \"#{user_words}\"."
end
# word_count

# Multiply method
def multiply(x, y)
  x * y
end
# puts multiply(5.2, 3)

def square_method(num)
  multiply(num, num)
end
# puts square_method(-5)

def power_method(num, pow)
  a = []
  pow.times { |_x| a.push(num) }
  result = 1
  a.each do |i|
    if i != 0
      result = multiply(result, i)
    else
      result
    end
  end
  result
end
puts power_method(5, 3)

def exclusive_or(x, y)
  if (x == false && y == true) || (x == false && y == true)
    return true
  else
    false
  end
end

def xor?(val1, val2)
  return true if val1 && !val2
  return true if val2 && !val1
end

def xor2?(val1, val2)
  (val1 && !val2) || (val2 && !val1)
end

def oddities(array)
  cont_arr = []
  index = 1
  while index < array.length
    cont_arr.push(array[index])
    index += 2
  end
  cont_arr
end

array = [2, 3, 4, 5, 6, 7]
# p oddities(array)

def oddities2(array)
  index = 1
  hldr_arr = []
  (0..(array.length / 2)).each do |_x|
    hldr_arr.push(array[index]) unless array[index].nil?
    index += 2
  end
  hldr_arr
end

# p oddities2(array)

def oddities3(array)
  hldr_arr = []
  array.each.with_index do |v, i|
    hldr_arr.push(v) if i.even?
    # hldr_arr.push(v) if i.odd?
  end
  hldr_arr
end
# p oddities3(array)

def oddities4(array)
  y = array.map.with_index do |v, i|
    v if i.even?
  end
  # y.delete_if { |x| x.nil? }
  y.delete_if(&:nil?)
end
# p oddities4(array)

def oddities5(array)
  y = array.map.with_index { |v, i| v if i.even? }
  y.delete_if(&:nil?)
end
# p oddities5(array)

def oddities6(array)
  z = array.map.with_index { |v, i| v if i.even? }
  z.reject(&:nil?)
end
# p oddities6(array)

require 'set'
# palindrome with set
def palindrome?(string)
  unpaired_term = Set.new
  char_arr = string.split('')

  char_arr.each do |char|
    if unpaired_term.include?(char)
      unpaired_term.delete(char)
    else
      unpaired_term.add(char)
    end
  end
  unpaired_term.length <= 1
end

def palindrome2?(string)
  string == string.reverse
end
=begin
p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')

p palindrome2?('madam')
p palindrome2?('Madam')
p palindrome2?("madam i'm adam")
p palindrome2?('356653')
=end

p palindrome2?(%w(a b a))

def palindrome_array?(arr)
  arr2 = arr.dup
  arr3 = []
  (0...arr.length).each do |_x|
    arr3.push(arr2.pop)
  end
  arr == arr3
end

arr = %w( a a b a a)

p palindrome_array?(arr)

require 'set'

def palindrome3?(string)
  set_hlder = Set.new
  char_arr = string.downcase.split("")
  (0...char_arr.length).each do |x|
    if set_hlder.include?(char_arr[x]) && char_arr[x].match(/[[:alnum:]]/)
      set_hlder.delete(char_arr[x])
    elsif char_arr[x].match(/[[:alnum:]]/)
      set_hlder.add(char_arr[x])
    end
  end
  # p set_hlder
  set_hlder.length <= 1
end

p palindrome3?("Madam")


def palindrome_easy(string)
  string == string.reverse
end

def string_cleaner(string)
  string2 = string.downcase.delete('^a-z0-9')
  palindrome_easy(string2)
end

p palindrome_easy('help')
p palindrome_easy('madam')

p string_cleaner('dog')
p string_cleaner('dad')

def palindrome_numbers(numb)
  numb2 = numb.to_s.split("")
  palindrome_array?(numb2)
end

p palindrome_numbers(0345430)
p palindrome_numbers(123210)
