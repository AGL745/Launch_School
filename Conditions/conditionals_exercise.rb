 #Exercise !:
   #(32 * 4) >= 129 = false
     #false != !true = false
      #true == 4 = true
         #false == (847 == '874') = T
       #(!true ||(!100/5) == 20) || ((328 / 4) == 82)) || false = True
 
#Exercise 2
#Program Name to Uppercase

def take_string(my_string)
  if my_string.length >= 10
    return puts my_string.upcase
  else
    return puts "Your string is good like this" + my_string
  end
end

take_string("Hello World How Are You!")

#Exercise 3
 def take_number 
   puts "Please enter a number between 0 and 100"
   number = gets.chomp.to_i
   case number 
   when number <= 50 && number > 0
     puts number.to_s + " is Less than 50."
   when number > 50 && number <= 100
     puts number.to_s + " is between 51 and 100."
   else
     puts "Your number is bigger than 100"
   end

   puts "Thanks for playing!"
 end

 take_number()

#Exercise 4
# 1.  Output = "FALSE" .. string does not equal integer 
# 2.  Output = "Did you get it right?" 3 == 3
# 3.  Output = "Alrigt now!." 10 >= 10

#Exercise 5
#Program Name Take Numer 2
def take_numb2
  puts "Please enter a positive number"
  numb = gets.chomp.to_i
  if numb <=  50
    return puts "Number is less than 50"
  else if numb > 50 && numb < 101
    return puts "Number is between 51 and 100"
  else
    puts "Number is over 100"
  end
end

def evaluate_case2(num)
  case num
  when 0..50
    puts "#{num} is between 0 and 50"
  when 51..100
    puts "#{num} is between 51 and 100" 
  else
    if num < 0
      puts "Negative num!"
    else
      puts "#{num} is above 100" 
    end 
  end
end
evaluate_case2(56)

take_numb2()

#Exercise 6
#Fix Code

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end 
#additional end required for method. 
equal_to_four(5)
