# short long short

def short_long_short(str1, str2)
  final_str = ""
  if str1.count('a-z0-9') > str2.count('a-z0-9')
    final_str = str2 + str1 + str2
  else
    final_str = str1 + str2 + str1
  end
  final_str
end

def stringer_two(str1, str2)
  if str1.length > str2.length
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end
p short_long_short('abc', 'defgh') # "abcdefghabc"
p short_long_short('abcde', 'fgh') # "fghabcdefgh"
p short_long_short('', 'xyz') # "xyz"

p stringer_two('asc', 'asdf')


# what century is it

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include? century % 100
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

century(5000)
century(6001)
century(386)
century(7)

# Leap Year
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

def leap_year2(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

leap_year2(2004)
leap_year?(2014)
leap_year2(2000)
leap_year?(1992)
leap_year2(1752)
leap_year?(1753)
leap_year2(2016)
leap_year?(2016)

def leap_year_julian(year)
  if year < 1752 && year % 4 == 0
    true
  else
    (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  end
end

leap_year_julian(2016)
leap_year_julian(200)
leap_year_julian(1752)

# Multiples of 3 and 5 summed
=begin

Write a method that computes the sum of all numbers between 1 and some other number that are a multiple of 3 or 5. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.
=end

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

multisum(7000)
multisum(70)

=begin
Discussion

Our solution begins with a multiple? method that returns true if the given number is an exact multiple of divisor, false if it is not. This method isn't entirely necessary, but it makes the main method a bit more readable.

The main method, multisum, does nothing fancy; it just rushes headlong into the problem, and comes out the other end with the correct result. It just adds each value in the range to our sum variable if the value is a multiple of 3 or 5.

Further Exploration

Investigate Enumerable.inject (also known as Enumerable.reduce), How might this method be useful in solving this problem? (Note that Enumerable methods are available when working with Arrays.) Try writing such a solution. Which is clearer? Which is more succint?
=end



# Running Total
=begin
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.
=end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

running_total([2, 4, 16])
running_total([18, 1, 7, 11, 201])
running_total([5])
running_total([])

=begin
Discussion

This solution does nothing fancy; it just walks through the array calculating the running total while building the resulting array. #map makes this really easy.
Further Exploration
Try solving this problem using Array#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays).
=end

# Convert a Sting to a Number!

DIGITS.freeze = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

=begin
Discussion

As usual, this isn't the shortest or even the easiest solution to this problem, but it is simple and straightforward. The big takeaway from this solution is our use of the DIGITS hash to convert digit characters as strings to their numeric values. This technique of using hashes to perform conversions of various types is a common idiom, and can be employed in a wide variety of situations, almost always resulting in code that is easier to read and understand.

The actual computation of the numeric value of string is strictly mechanical. We simply take each digit and add it to 10 times the previously calculated value, which quickly and easily gets us the desired result. For example, if we have 4, 3, and 1, then the final result is computed as follows:
=end


=begin
Convert a String to a Signed Number!

In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

DIGITS.freeze = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

=end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else string_to_integer(string)
  end
end

string_to_signed_integer('4331')
string_to_signed_integer('-870')
string_to_signed_integer('+300')

=begin
Discussion
This solution is reasonably easy: it simply looks at the first character of string. If the character is a -, the negative of the number represented by the rest of the string is returned. If it is not a -, it returns the value of the rest of the string as a number, skipping over a leading + if present.

Note that we rely on the fact that case returns the value returned by the when (or else) branch selected.

The most interesting aspect of this method is the use of string[1..-1] to obtain the remainder of the string after a leading + or -. This notation simply means to extract the characters starting at index 1 of the string (the second character) and ending with the last character (index -1).

Further Exploration

In our solution, we call string[1..-1] twice, and call string_to_integer three times. This is somewhat repetitive. Refactor our solution so it only makes these two calls once each.
=end


=begin
Convert a Number to a String!

In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

=end

DIGITS2.freeze = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS2[remainder])
    break if number == 0
  end
  result
end

integer_to_string(9351)
integer_to_string(0)
integer_to_string(7000)

=begin
Discussion:
Methods used:
Class - Big Numerical
Method Name - divmod
Syntax - divmod(value)
Docs - Divides by the specified value, and returns the quotient and modulus as BigDecimal numbers. The quotient is rounded towards negative infinity.
ex.

101.divmod(10)
[10, 1]

a, b = 202.divmod(10)
[20, 2]
a = 20
b = 2

This solution is similar in some respects to the string_to_integer method we developed, but is a bit trickier to get right.

In string_to_integer, we used a Hash to perform conversions from strings to numbers. In this method, we could also use a Hash, but an Array works just as well, and maybe more clearly. If we have the digit 5, we can get the string equivalent by just looking up DIGITS[5].

The core of the method simply walks through the number chopping off the last digit in each iteration by using number.divmod(10), which returns two values: the value of number divided by 10 using integer division, and the remainder of that division. The remainder in each case is the rightmost digit in the remaining number., so we just prepend it to the current result value. Once number is whittled down to 0, we're done.

Further Exploration

One thing to note here is the String#prepend method; unlike most string mutating methods, the name of this method does not end with a !. However, it is still a mutating method - it changes the string in place.

This is actually pretty common with mutating methods that do not have a corresponding non-mutating form. chomp! ends with a ! because the non-mutating chomp is also defined. prepend does not end with a ! because there is no non-mutating form of prepend.

How many mutating String methods can you find that do not end with a !. Can you find any that end with a !, but don't have a non-mutating form? Does the Array class have any methods that fit this pattern? How about the Hash class?
=end



=begin
Convert a Signed Number to a String!

In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

DIGITS2.freeze = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS2[remainder])
    break if number == 0
  end
  result
end

=end

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else integer_to_string(number)
  end
end

signed_integer_to_string(4361)
signed_integer_to_string(-173)
signed_integer_to_string(0)

=begin
Discussion

This solution is very similar to the string_to_signed_integer method we wrote 2 exercises ago. It simply checks the sign of the number, and passes control to integer_to_string for the heavy lifting.

The expression number <=> 0 may look a bit odd; this is ruby's "spaceship" operator. It compares the left side against the right side, then returns +1 if the left side is greater than the right, -1 if the left side is smaller than the right, and 0 if the values are the same. This is often useful when you need to know whether a number is positive, negative, or zero.

Further Exploration

Refactor our solution to reduce the 3 integer_to_string calls to just one.
=end
