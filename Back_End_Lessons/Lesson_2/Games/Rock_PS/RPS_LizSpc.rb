=begin
Author: GadmanAL
Name: Rock Paper Scissor Spock
=end

VALID_CHOICES = %w(rock paper scissors lizard x-spock)
VALID_SEL = %w(r p s l xp rock paper scissors lizard x-spock)

choice = ''
$game_count = 0
$player1_score = 0
$player2_score = 0


def prompt(message)
  puts("=> #{message}")
end

def input_valid(input)
  loop do
    if VALID_SEL.include?(input) 
      return choice = input
    else
      prompt("Please input valid choice.")
      input = gets.chomp.downcase
      input_valid(input)
    end
  end
end

def point_scored(who)
  if who == "player1"
    $player1_score += 1
  elsif who == "player2"
    $player2_score += 1
  end
end

def win_condition(winner)
  if winner == "player"
    point_scored("player1")
    prompt("Player wins!")
  elsif winner == "computer"
    point_scored("player2")
    prompt("Computer wins!")
  else
    prompt("It's a tie.. :-|")
  end
end

def winner(choice, computer_choice)
  case
  when  choice.chr == computer_choice.chr 
    win_condition("both")
    
  when choice.chr == "r" && computer_choice == "scissors"
    win_condition("player")
  when choice.chr == "r" && computer_choice == "lizard"
    win_condition("player")
    
  when choice.chr == "p" && computer_choice == "rock"
    win_condition("player")
  when choice.chr == "p" && computer_choice == "x-spock"
    win_condition("player")
    
  when choice.chr == "s" && computer_choice == "lizard"
    win_condition("player")  
  when choice.chr == "s" && computer_choice == "paper"
    win_condition("player")
    
  when choice.chr == "l" && computer_choice == "x-spock"
    win_condition("player")
  when choice.chr == "l" && computer_choice == "paper"
    win_condition("player")
    
  when choice.chr == "x" && computer_choice == "rock"
    win_condition("player")
  when choice.chr == "x" && computer_choice == "scissors"
    win_condition("player")
  ##
  when choice.chr == "r" && computer_choice == "x-spock"
    win_condition("computer")
  when choice.chr == "r" && computer_choice == "paper"
    win_condition("computer")
    
  when choice.chr == "p" && computer_choice == "scissors"
    win_condition("computer")
  when choice.chr == "p" && computer_choice == "lizard"
    win_condition("computer")
    
  when choice.chr == "s" && computer_choice == "rock"
    win_condition("computer")  
  when choice.chr == "s" && computer_choice == "x-spock"
    win_condition("computer")
    
  when choice.chr == "l"  && computer_choice == "rock"
    win_condition("computer")
  when choice.chr == "l" && computer_choice == "scissors"
    win_condition("computer")
    
  when choice.chr == "x" && computer_choice == "rock"
    win_condition("computer")
  when choice.chr == "x" && computer_choice == "paper"
    win_condition("computer")
  
  end
end

def winner_count
  if $game_count > 4 || $player1_score > 2
      win_condition("player")
      exit
  elsif $player2_score > 2
      win_condition("computer")
      exit
  else
    $game_count += 1
    prompt("Games played: #{$game_count}")
    prompt("Wins P1: #{$player1_score} P2: #{$player2_score}")
  end
end

loop do
  # players turn
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = gets.chomp.downcase
  input_valid(choice)
  # sample method picks random index value from array
  computer_choice = VALID_CHOICES.sample()
  prompt("Player chose: #{choice}. Computer chose: #{computer_choice}.")
  winner(choice, computer_choice)
  winner_count
  prompt("Do you want to play again? \nNote: First letter HK")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end
