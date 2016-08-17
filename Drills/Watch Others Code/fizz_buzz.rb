def fizzbuzz(numb1, numb2)
  # puts (numb1..numb2).to_a
  # puts *(numb1..numb2)
  fizz_array = []
  (numb1..numb2).each do |value|
    if value % 3 == 0 && value % 5 == 0
      fizz_array.push('FizzBuzz')
    elsif value % 3 == 0
      fizz_array.push('Fizz')
    elsif value % 5 == 0
      fizz_array.push('Buzz')
    else
      fizz_array.push(value)
    end
  end
  print fizz_array
end

fizzbuzz(1, 15)
