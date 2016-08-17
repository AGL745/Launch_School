def change_maker(amount_left, denominations_left)
  return 1 if amount_left == 0
  return 0 if amount_left < 0
  return 0 if denominations_left.empty?

  puts "checking"

  current_coin, rest_of_coins = denominations_left[0], denominations_left[1..-1]

  num_possibilities = 0
  while amount_left >= 0
    num_possibilities += change_maker(amount_left, rest_of_coins)
    amount_left -= current_coin
  end
  num_possibilities
end

p change_maker(4, [1, 2, 3])
