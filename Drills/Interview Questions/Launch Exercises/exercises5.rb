=begin
ASCII String Value

Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

=end

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

ascii_value('Four score')
ascii_value('Launch School')
ascii_value('a')
ascii_value('')

=begin

Discussion:
Methods used:
Class - String
Method Name - ord
Syntax - "s".ord or ?a.ord
Docs - Return the Integer ordinal of a one-character string.

There isn't much to say here. We initialize the sum to 0 (which takes care of the empty string case in addition to giving us a starting value), then add String#ord for every character to that sum. Finally, we return the sum.

Further Exploration

There is an Integer method such that:

char.ord.mystery == char
where mystery is our mystery method. Can you determine what method name should be used in place of mystery? What happens if you try this with a longer string instead of a single character?

char = "a"

char.ord.chr == char
# => true

# Dealing with encoding.
97.chr(Encoding::UTF_8) == char
# => true
=end

=begin
After Midnight (Part 1)

The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

def time_of_day2(time)
  hour = (time / 60 % 24).to_s.rjust(2, '0')
  minute = (time % 60).to_s.rjust(2, '0')
  "#{hour}:#{minute}"
end

=begin
Discussion
Methods used:
divmod
printf
Class - BigDecimal
Method Name - divmod
Syntax -
a = 20
q, m = a.divmod(b)

printf
Docs - Divides by the specified value and returns the quotient and modulus as BigDecimal numbers. The quotient is rounded towards negative infinity.

We start out this solution by defining a few useful constants so we don't have a bunch of mystery numbers in our method. The body of the method then boils down to 3 operations:

Ensure the time difference is in the range of 0..MINUTES_PER_DAY by using the % operator (it computes the remainder of dividing the left side by the right side)
Use divmod to break the time difference down into hours and minutes
Format the results with Kernel#printf. Each %02d produces a two-digit number with leading zeros as needed.
Note that it is the first step that ensures that negative numbers are properly handled.
=end

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

def before_midnight2(time)
  -after_midnight(time) % MINUTES_PER_DAY
end

=begin
The after_midnight method is easy enough; we simply have to split the time strings into hours and minutes, then calculate the result in minutes.

You might be puzzled by .map(&:to_i); it's a shorthand way of doing this:

something.map { |string| string.to_i }

In the last statement of after_midnight, we need to use % MINUTES_PER_DAY to handle a simple edge case. In the given time format, 00:00 and 24:00 are the same. However, the way we implemented after_midnight calculates these as different times. We use the modulus operator (%) and MINUTES_PER_DAY to divide the calculated minutes by the number of minutes in a day, then return the remainder, which will be 0 for both 00:00 and 24:00.

before_midnight reuses after_midnight by simply subtracting the return value of after_midnight from MINUTES_PER_DAY. This does have the unfortunate effect of setting delta_minutes to 1440 when we want 0, so the statement after simply fixes that.
=end
