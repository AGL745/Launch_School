# Calulator application
# Pseudo Code
# ask user for two numbers
# ask the use for an operation to perform
# perform operation on the two numbers
# out the results

def prompt (message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end
prompt "Welcome to calculator"
name = ''
loop do
  prompt "Please enter your name: "
  name = gets().chomp()
  if name.empty?()
    prompt "Make sure to use a valid name."
  else
    break
  end
end

prompt "Hi there #{name}!"
loop do
  num1 = ''
  num2 = ''

  loop do
    prompt "Enter the first number: "
    num1 = gets().chomp()
    if valid_number?(num1)
      break
    else
      prompt "Enter valid number: "
    end
  end

  loop do
    prompt "First number is #{num1}. Enter the second number: "
    num2 = gets().chomp()
    if valid_number?(num2)
      break
    else
      prompt "Enter valid number: "
    end
  end

  prompt "Your second number is #{num2}."
  operator_prompt = <<-MSG
    What operation do you want to perform?
    1) Addition
    2) Subtraction
    3) Multiplication
    4) Division
MSG
  prompt operator_prompt
  operation = ''
  loop do
    operation = gets.chomp()
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt "Must choose valid operation (1,2,3,4)"
    end
  end

  prompt "#{operation_to_message(operation)} the two numbers..."
  result = case operation
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_f / num2.to_f
           end
  prompt "Your answer is: #{result}"
  prompt "Do you want to perform another calculation (Y to calculate again)"
  answer = gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt "Thank you!"
