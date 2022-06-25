# The following functions selects stock prices that are lowest and highest and recommends the day to buy and sell

# the stock pick function
def stock_picker
  stock_picker = [23, 4, 56, 9, 5, 10, 5, 21, 7, -34, 4, 110, 3]
  puts "The Prices of a given stock in' #{stock_picker.length} days"
  puts 'Pick the Best Day to Buy the Stock'
  # iterate through the stock price array and select the highest price 
  stock_picker.each do |x|
    next unless x.negative?

    day = stock_picker.find_index(x)
    # the highest price would be the best price to buy in that day at that index in the array
    puts "The best day to buy would be #{day}th day at this price of #{stock_picker[day]}"
  end
  # the best price to sell would be the highest in that day the index for the array shows
  puts 'Pick the best day to Sell: '
  price = stock_picker.first
  stock_picker.each do |x|
    price = x if x > price
  end
  # display the best price and which day in hte arrays index
  puts "The best price to sell would be #{price} that would be on #{stock_picker.find_index(price)}th Day"
end

stock_picker

