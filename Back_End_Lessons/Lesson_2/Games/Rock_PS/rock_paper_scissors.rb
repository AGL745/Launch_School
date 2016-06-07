VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts("=> #{message}")
end

choice = ''

def input_valid(input)
  loop do
    if VALID_CHOICES.include?(input)
      return choice = input
    else
      prompt("Please input valid choice.")
      input = gets.chomp
    end
  end
end

def win_condition(winner)
  if winner == "player"
    prompt("Player wins!")
  # call game loop
  elsif winner == "computer"
    prompt("Computer wins!")
  else
    prompt("It's a tie.. :-|")
  end
end

def winner(choice, computer_choice)
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
  # players turn
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = gets.chomp
  input_valid(choice)
  # sample method picks random index value from array
  computer_choice = VALID_CHOICES.sample()

  prompt("Player chose: #{choice}. Computer chose: #{computer_choice}.")
  winner(choice, computer_choice)
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end
