def fibonacci(number)
  if number < 2 
     number
  else 
    number =fibonacci(number-1) + fibonacci(number-2)
  end
end

puts fibonacci(6)

