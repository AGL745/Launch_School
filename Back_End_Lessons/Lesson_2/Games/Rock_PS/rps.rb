VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  puts("=> #{message}")
end

choice = ''

def input_valid(input)
  if VALID_CHOICES.include?(input)
    return choice = input
  else
    prompt("Please input valid choice.")
    input = gets.chomp
    input_valid(input)
  end
end

def player_choice
  #players turn
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = gets.chomp
  input_valid(choice)
  return choice
end

def win_condition(winner)
  if winner == "player"
    return prompt("Player wins!")
  #call game loop
  elsif winner == "computer"
    return prompt("Computer wins!")
  else
    return prompt("It's a tie.. :-|")
  end
end

def winner(choice, computer_choice)
  puts choice, computer_choice
  case  
  when choice == computer_choice
    win_condition("both")
  when choice == "rock" && computer_choice == "scissors" 
    win_condition("player")
  when choice == "paper" && computer_choice == "rock"
    win_condition("player")
  when choice == "scissors" && computer_choice == "paper"
    win_condition("player")
  when computer_choice == "rock" && choice == "scissors"
    win_condition("computer")
  when computer_choice == "paper" && choice == "rock"
    win_condition("computer")
  when computer_choice == "scissors" && choice == "paper"
    win_condition("computer")
  end
end


loop do
  player_choice
  #sample method picks random index value from array
  computer_choice = VALID_CHOICES.sample()
  #puts choice
  prompt("Player chose: #{choice}. Computer chose: #{computer_choice}.")
  
  winner(choice, computer_choice)
  
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y") 
  
end

