# Stock Market Problem
=begin
Given array of elements representing stock prices over a day. Permitted to buy and sell 1 share of a stock. Design algorithm to find the best times to buy and
sell.
* Best time = most profit
* Profit = buying price less than selling price
* You must buy before you sell
* Find i and j that maximizes Aj - Ai, where i < j.
* O(n^2) - Find all possible permutations and then determine the maximum profit.
* Solve in O(n)
=end

# Pseudo Code
# Track minimum value index
# While traversing update minimum value index when a new min val is found
# Compare current min value with new min
# Save the buy and sell time when the difference exceeds our max difference and # update max difference value

require 'pry'

def get_max_profit(stock_listing)
  if stock_listing.length < 2
    raise IndexError, 'Getting a profit requires at least 2 prices'
  end

  min_price = stock_listing[0]
  max_profit = stock_listing[1] - stock_listing[0]

  stock_listing.each_with_index do |value, index|
    if index == 0 then next end
    potential_profit = value - min_price
    max_profit = [max_profit, potential_profit].max
    min_price = [min_price, value].min
  end
  puts max_profit
end

stocks = [3, 6, 10, 2, 66, 43, 1, 23]

get_max_profit(stocks)
