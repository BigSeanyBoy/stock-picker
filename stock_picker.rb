def stock_picker(prices)
  # set the max value as 0
  # loop through each day
    # loop though each of the following days
      # find the difference
      # if the difference is > max
        # max = difference
        # best_days = [day1, day2]
  # return best_days
  max_return = 0
  best_days = []
  prices.each_index do |i| 
    next_day = i + 1
    prices[next_day...prices.length].each_index do |j|
      current_return = prices[next_day+j] - prices[i]
      if current_return > max_return
        max_return = current_return
        best_days = [i, next_day+j]
      end
    end
  end
  best_days
end