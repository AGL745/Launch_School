# Name: Twenty-One
# AGL745
# 20 June 2015

=begin
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
=end

# Deck Data-structure (Hash)

$player_cards = []
$dealer_cards = []

DECK_HASH = { two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, jack: 10, queen: 10, king: 10, ace: 10 }

DECK_ARRAY = [:two, :three, :four, :five, :six, :seven, :eight, :nine, :ten, :jack, :queen, :king, :ace]

def prompt(msg)
  puts "=> #{msg}"
end

def card_dealer
  $player_cards = DECK_ARRAY.sample(2)
  $dealer_cards = DECK_ARRAY.sample(2)
end

def card_hit(name)
  if name == "player"
    $player_cards << DECK_ARRAY.sample(1)
  else
    $dealer_cards << DECK_ARRAY.sample(1)
  end
end

def bust_condition(score, name)
  if score > 21
    winner(name)
    true
  else
    false
  end
end

def score_calculator(name)
  total = 0
  if name == "player"
    return points = $player_cards.flatten
  else
    points = $dealer_cards.flatten
  end
  points.each do |x|
    unless x == :ace
      total += DECK_HASH[x]
    end

    if x == :ace && (total + 11) < 11
      total += 11
    elsif x == :ace && (total + 11) > 21
      total += 1
    end
  end
  total
end

def player_turn
  loop do
    prompt "Your current count is #{score_calculator('player')}"
    break if bust_condition(score_calculator("player"), "player")
    prompt "Do you want to HIT or STAY"
    answer = gets.chomp
    break if answer.downcase.start_with?("s")
    card_hit("player")
  end
end

def dealer_turn
  loop do
    break if score_calculator("dealer") >= 17
    if score_calculator("dealer") < 17
      card_hit("dealer")
      bust_condition(score_calculator("dealer"), "dealer")
    end
  end
end

def winner(name)
  prompt "#{name.capitalize} bust."

  case name
  when 'player'
    prompt "Dealer wins!"
  when 'dealer'
    prompt 'Player wins!'
  when score_calculator('player') < score_calculator('dealer')
    prompt 'Player wins!'
  when score_calculator('player') > score_calculator('dealer')
    prompt 'Dealer wins'
  else
    prompt "Tie!"
  end
end

def game
  card_dealer
  prompt "The dealer total is #{score_calculator('dealer')}"
  prompt "The player total is #{score_calculator('player')}"
  loop do
    player_turn
    dealer_turn
    break
  end
  p "Player score #{score_calculator('player')}"
  p "Dealer score #{score_calculator('dealer')}"
  p $player_cards
  p $dealer_cards
end

game
