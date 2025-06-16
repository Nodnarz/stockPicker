def stock_picker(prices)
  best_days = []
  max_profit = 0

  (0...prices.length).each do |buy_day|
    ((buy_day + 1)...prices.length).each do |sell_day|
      profit = prices[sell_day] - prices[buy_day]

      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  puts "Best days to trade: #{best_days} for a profit of $#{max_profit}"
  best_days
end

stock_picker([4,19,16,9,5,4,3,2,10])
