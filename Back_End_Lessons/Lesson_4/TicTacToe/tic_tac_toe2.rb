# Launch School
# Program: TicTacToe
# AGL745

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
def prompt(msg)
  puts "=> #{msg}"
end
# robocop:disable Metrics/MethodLength, MetricAbcSize

def display_board(brd)
  system 'clear' # clears screen and prints new board
  puts " You're a #{PLAYER_MARKER}. Comp is #{COMPUTER_MARKER}"
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |   #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |   #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |   #{brd[9]}"
  puts "     |     |"
  puts " "
end
# rubocop:enable Metrics/MethodLength, MetricAbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

# My attempt
def joiner(array, seperator = ', ', word = "or")
  holder = []
  array.each do |x|
    holder << x << seperator
  end
  holder
end

# Launch Answer
def joiner2(arr, delim = ', ', word = 'or')
  arr[-1] = "#{word} #{arr.last}" if arr.size > 1
  arr.size == 2 ? arr.join(' ') : arr.join(delim)
end

# def keep_score(previous_winner)
#   if previous_winner == 'Player'
#   else
# end

# pass board to method and conduct mutation
def player_places_piece!(brd)
  square = ' '
  loop do
    # prompt "Choose from available squares: (#{empty_squares(brd).join(', ')})"
    prompt "Choose: #{joiner2(empty_squares(brd), '; ')}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
  # bang bang causes return to be true true instead of value (Player / Computer)
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

  winning_lines.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def mygame(brd)
  board = brd
  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end
end

loop do
  mygame(initialize_board)
  if detect_winner(board) == 'Player'

    prompt "Do you want to play again (Y/N)? "
    answer = gets.chomp
  else
    prompt "Looks like the computer won!"
    answer = "no"
  end
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for player TicTacToe.. Goodbye!"
