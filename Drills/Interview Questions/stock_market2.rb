# Stock Market Problem

# def max(a, b)
#   a > b ? a : b
# end



stocks = [3, 6, 10, 2, 66, 43, 1, 23]

def get_max_profit2(price_list)
  min_price = price_list[0]
  max_profit = price_list[1] - price_list[0]
  sell_time = 0
  price_list.each_with_index do |x, i|
    if i == 0 then next end
    current_price = x
    potential_profit = current_price - min_price
    if max_profit < potential_profit
      max_profit = [max_profit, potential_profit].max
      sell_time = i
    end
    min_price = [current_price, min_price].min
  end
  buy_time = price_list.index(price_list.take(sell_time).min)
  puts "You should sell at: #{sell_time}"
  puts "You should buy at: #{buy_time}"
  puts "Your max profit will be $#{max_profit}"
end

get_max_profit2(stocks)

