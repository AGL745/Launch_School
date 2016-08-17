# prime between two numbers

def prime?(number)
  # return false if number.even?
  (2..(number - 1)).each do |x|
    return false if number % x == 0
  end
  true
end

def prime_range(start, stop)
  (start..stop).select do |numbers|
    prime?(numbers)
  end
end

p prime_range(1, 15)


