# Medium Exercises
# Rotation
# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.
# Examples:
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

def rotate_array(array)
    array[1..-1] + [array[0]]
end

#
# Our solution simply slices everything out of the array except the first element, then appends the original first element to the end. Note that we must be careful to not mutate array.
#
# def rotate_array(array)
#   array << array.shift
# end
#
# def rotate_array(arr)
#   arr.push(arr.shift)
# end

# Rotation (Part 2)
# Write a method that can rotate the last n digits of a number. For example:
#
# Examples:
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917
#
# Note that rotating just 1 digit results in the original number being returned.
#
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
def rotate_rightmost_digits(number, n)
    all_digits = number.to_s.chars
    all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
    all_digits.join.to_i
end

# Rotation (Part 3)
# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.
#
# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.
#
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845
#
# def max_rotation(num)
#   fix_num = rotate_rightmost_digits(num, "#{num}".length)
#   count, pos = ["#{num}".length - 1, "#{num}".length - 1]
#   count.times do
#     fix_num = rotate_rightmost_digits(fix_num, pos)
#     pos -= 1
#   end
#   fix_num
# end
#
# def max_rotation(number_to_rotate)
#   rotation_counter = number_to_rotate.to_s.length
#
#   loop do
#     number_to_rotate = rotate_rightmost_digits(number_to_rotate, rotation_counter)
#     return number_to_rotate if rotation_counter <= 2 # less than reqd to catch 1 digit edge case
#     rotation_counter -= 1
#   end
# end

def max_rotation(number)
    number_digits = number.to_s.size
    number_digits.downto(2) do |n|
        number = rotate_rightmost_digits(number, n)
    end
    number
end

# 1000 Lights
# You have a bank of switches before you numbered from 1 to 1000. Each switch is connected to exactly one light that is initially off. You walk down the row of switches, and turn every one of them on. Then, you go back to the beginning and toggle switches 2, 4, 6, and so on. Repeat this for switches 3, 6, 9, and so on, and keep going until you have been through 1000 repetitions of this process.
#
# Write a program that determines how many lights are on at the end, and which lights are on.
#
# Example with 5 lights:
#
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lignts 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4.
#
# With 10 lights, 3 lights are left on: lights 1, 4, and 9.

def toggle_on_or_off(lights)
    1.upto(lights.size) do |round_number|
        lights.each do |position, value|
            if position % round_number == 0
                value == 'off' ? lights[position] = 'on' : lights[position] = 'off'
            end
        end
    end
end

def on_lights(lights)
    lights.keys.select { |key| ligths[key] == 'on' }
end

lights = {}
1.upto(1000) { |number| lights[number] = 'off' }
toggle_on_or_off(lights)
p on_lights(lights)
p on_lights(lights).size

# Discussion
# In this exercise we're going to use a Hash to represent our 1000 lights. A single light is represented as a key-value pair within this hash. The key will be the position that light has out of 1000 lights. The value will be a string, "on" or "off", to represent the state of that light.
#
# We go through each round with the following code:
#
# 1.upto(lights.size) do |round_number|
#   # ...
# end
# For toggling a light off and on, we use this code:
#
# lights.each do |position, value|
#   if position % round_number == 0
#     value == "off" ? lights[position] = "on" : lights[position] = "off"
#   end
# end
# Notice that we're using a ternary statement. It checks if the current light has a value of "off", if that light is off then the value is set to "on", and the opposite is done if a light is currently on.
#
# Next, we group our lights into those that are on with the method on_lights. In this method we use select to pick which lights we want to return:
#
# def on_lights(lights)
#   lights.keys.select { |key| lights[key] == "on" }
# end
# For example, the code above for on_lights will return an array of light positions; which lights get chosen for our new array are determined by whether lights[key] == "on" is true.
#
# Our final answer ends up being:
#
# p lights_on(lights)
# Output: [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
#
# p lights_on(lights).size
#
# def toggle_on_or_off(num)
#   lights = {}
#   round= 1
#   (1..num).each {|off| lights[off] = -1 }
#   (1..num).each do |round|
#     (1..num).each {|light| lights[light] *= -1 if light % round == 0 }
#   end
#   lights = lights.select { |k, v| v == 1 }
#   puts "#{lights.count} light are on: #{lights.keys.join(', ')}"
# end

# Diamonds
# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.
#

def print_row(grid_size, distance_from_center)
    number_of_stars = grid_size - 2 * distance_from_center
    stars = '*' * number_of_stars
    puts stars.center(grid_size)
end

def diamond(grid_size)
    max_distance = (grid_size - 1) / 2
    max_distance.downto(0) { |distance| print_row(grid_size, distance) }
    1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

diamond(9)

# Discussion
#
# Our solution breaks the problem down into two smaller problems: printing a single row of the diamond, and a method to iterate through those rows.
#
# Iterating through the rows is most easily handled if you recognize that the bottom part of the diamond is the mirror image of the top part, with the center row of the diamond between these two parts. Our solution takes this into account and iterates first from the first row to the middle row of the diamond, and then iterates in the reverse direction from the row just below the center to the bottom row. We use the variable distance to keep track of how far we are from the center row, with the center row being a distance of 0 from itself.
#
# For each iteration, we call the print_row method. print_row uses the grid size and the distance from the center row to determine how many stars are needed, and to center those stars within our grid.
#
# We could have done all this in one method, but the result would have either been pretty messy, or it would repeat itself. By breaking things down into sub-problems, we were able to solve this problem easily
#
# def diamond(number)
#   1.upto(number) do |num|
#     puts ('*' * num).center(number) if num.odd?
#   end
#   (number-2).downto(1) do |num|
#     puts ('*' * num).center(number) if num.odd?
#   end
# end

# Stack Machine Interpretation
# Write a method that implements a miniature stack-and-register-based programming language that has the following commands:
#
# n Place a value n in the "register"
# PUSH Push the register value on to the stack
# ADD Add value on stack to the register value
# SUB Subtract value on stack from the register value
# MULT Multiply value on stack by the register value
# DIV Divide value on stack into the register value
# MOD Divide value on stack into the register value and leave remainder
# POP Remove item from stack and place in register
# PRINT print the register value
#
# ADD, SUB, MULT, DIV, and MOD all remove the topmost item from the stack, perform the operation, and leave the result in the register.
#
# All operations are integer operations (which is only important with DIV and MOD).
#
# Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.
#
# You should initialize the register to 0.

def minilang(program)
    stack = []
    register = 0
    program.split.each do |token|
        case token
        when 'ADD'   then register += stack.pop
        when 'DIV'   then register /= stack.pop
        when 'MULT'  then register %= stack.pop
        when 'MOD'   then register -= stack.pop
        when 'SUB'   then register -= stack.pop
        when 'PUSH'  then stack.push(register)
        when 'POP'   then register = stack.pop
        when 'PRINT' then puts register
        else register = token.to_i
        end
    end
end

# Word to digit
# Write a method that takes a sentence string as input, and returns a new string that contains the original string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
#
# Example:
#
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
#

DIGIT_HASH = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }.freeze

def word_to_digit(words)
    DIGIT_HASH.keys.each do |word|
        words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
    end
    words
end

def word_to_digit2(string)
    string.gsub(/#{DIGIT_HASH.keys.join("|")}/, DIGIT_HASH)
end

# Discussion
#
# This one is a bit tricky. First, we define a hash that will act like a dictionary for converting words to digits. It's useful to store values we want to convert in one place, and a hash works nicely for this. If we replace the word 'eight' in a sentence, we can use DIGIT_HASH to lookup the value that should replace it.
#
# Within our word_to_digit method, we want to make sure that all words, zero to nine are converted to digits. So, let's iterate through all the values we want to replace, and then within our iterator we can replace all instances of the current word with the corresponding digit.
#
# To replace all instances of a word, we can use the gsub! method. In this case, we use regex to look for a word in the string passed in and replace it with the corresponding digit.
# The word to look for is interpolated into the regex, /\b#{word}\b/. \b is used to make sure that separate strings and not substrings are replaced within words. For instance, if the phrase/sentence passed into this method has the word "freight" in it, then that word will be left alone. Without using \b, the word "freight" would become "fr8".
#
