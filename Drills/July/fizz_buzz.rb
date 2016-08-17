def fizzbuzz(first, last)
  my_arr = []
  (first..last).each do |number|
    if number % 3 == 0 && number % 5 == 0
      my_arr << "FizzBuzz"
    elsif number % 3 == 0
      my_arr << "Fizz"
    elsif number % 5 == 0
      my_arr << "Buzz"
    end
  end
  p my_arr
end
fizzbuzz(1, 30)
