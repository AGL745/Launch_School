# Change calculator
# Given an amount in dollars and an array of coin denominations compute the different ways of making the dollar amount with array values.

def change_calculator(amount, coins)
  # one_cent = amount / coins[0]
  # five_cent = amount / coins[1]
  # ten_cent = amount / coins[2]
  number_coins = 0
  array = []
  coins.each do |key, value|
    if amount >= 1 # && (amount / 10) % value == 0
      number_coins = amount / value
      unless number_coins.integer?
        array.push(key, number_coins)
      end
    end
  end
  array
end

coins_hash = { one_cent: 0.01, five_cent: 0.05, ten_cent: 0.10, twenty_five: 0.25, fifty_cent: 0.50}

p change_calculator(1.10, coins_hash)
