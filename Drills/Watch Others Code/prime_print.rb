# determine number prime

def prime?(number)
  (2..(number - 1)).each do |divisor|
    return false if number % divisor == 0
  end
  true
end

def find_prime(start, stop)
  (start..stop).select do |number|
    prime?(number)
  end
end

p find_prime(3, 10)
p find_prime(5, 20)
