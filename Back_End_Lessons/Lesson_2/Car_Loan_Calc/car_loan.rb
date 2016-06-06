#Car Load Calculator 
#-Loan Amount
#-APR 
#-Loan Duration 
#
#Calculate 
# => Monthly interest rate
# => Loan duration in months 
#
#Pseudo Code 
#- print welcome message 
#- Ask user loan amount 
#- Input validation 
#- Store value as float 
#- Ask user for APR 
#- Input validation
#- Store value as float 
#- Ask how long to payoff loan 
#- Input validation 
#- Store value  as float 
#- Calculate fixed monthly payment Store value as float 
#- Monthly Payment (P) - P = L[c(1 + c)^n]/[(1 + c)^n - 1]
#- Remaining Balance (B) - B = L[(1 + c)^n - (1 + c)^p]/[(1 + c)^n - 1]
=begin 
i = IRR - internal rate of return 
L = Loan amount
F = Points and all other lender fees
P = Monthly payment
n = Month when the balance is paid in full
Bn = Balance in month n
=end 

#- Print loan duration in months 

require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

l = 0
$c = 0
n = 0
$payments = 0.0
balance = 0.0
p = 0.0


loop do
  def prompt(text)
    puts "=> #{text}"
  end

  def valid_float(num)
    num = num.to_f
  end

  prompt(MESSAGES['welcome'])
  prompt(MESSAGES['intro'])
    
  type_loan = gets.chomp
  
    def loan_data
        prompt(MESSAGES['loan_data'])
        
        operator_prompt = <<-MSG
Lets Find Your Monthly Payments 
1) Input loan amount in dollars (ex 500.01) - Press enter.
2) Enter percentage APR on load (don't worry we'll convert to decimal for you). - Press Enter.
3) How many months will it take you to complete your payment (1 yr = 12). - Press Enter.
MSG
        prompt(operator_prompt)
        
        l = gets.chomp.to_f
        prompt("Your original loan was #{l}")
        $c = (gets.chomp.to_f / 100) / 12
        prompt("Your monthly APR is #{$c}")
        n = gets.chomp.to_i 
        prompt("Your schedule completion is in #{n} months")
        $payments = (l * ($c * (1 + $c) ** n)) / (( 1 + $c)** n - 1)
    end
    
      def loan_data2
        prompt(MESSAGES['loan_data'])
          
        operator_prompt = <<-MSG
Lets Find Your Balance

1) Input loan amount in dollars (ex 500.01) - Press enter.
2) Enter percentage APR on load (don't worry we'll convert to decimal for you). - Press Enter.
3) How many months will it take you to complete your payment (1 yr = 12). - Press Enter.
4) Enter the number of months you've been paying this loan (ex 5) - Press Enter. 
MSG
        prompt(operator_prompt)

    l = gets.chomp.to_f
          prompt("Your original loan was #{format('%02.2f',l)}")
    $c = (gets.chomp.to_f / 100) / 12
    prompt("Your monthly APR is #{$c}")
    n = gets.chomp.to_i 
    prompt("Your schedule completion is in #{n} months or #{n/12} years")
    p = gets.chomp.to_f
    prompt("You've been paying this loan for #{p} months")
    end
    
    loop do
      if type_loan.empty?
          prompt(MESSAGES['invalid'])
      elsif type_loan.downcase().start_with?('y')
          prompt(MESSAGES['new_loan'])
          loan_data
          prompt("Your monthly payment is #{format('%02.2f',$payments)}")
          break
      elsif type_loan.downcase.start_with?('n')
          prompt(MESSAGES['exisiting']) 
          loan_data2
          balance = (l * ((1 + $c) ** n) - ((1 + $c) ** p)) / ((( 1 + $c) ** n) - 1)
          prompt("Your remaining balace is #{format('%02.2f', balance)}")
          break

      else
          prompt(MESSAGE['invalid'])
      end
  end
    prompt("Do you want to do another calculation, Y or N ? ")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
end 
