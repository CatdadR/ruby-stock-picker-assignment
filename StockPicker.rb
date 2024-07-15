def stock_picker(stocks)
    stock_buy = 0
    stock_sell = 0 
    profit = 0
    day = stocks.length

    stocks.length.times do |index|
       
        index.upto(day) do |dayleft|
           if stocks[index + dayleft].to_i - stocks[index] > profit
            stock_buy = [index.to_s, stocks[1].to_s]
            stock_sell = [(index + dayleft).to_s, stocks[index + dayleft].to_s ]
            profit = stocks[index + dayleft] - stocks[index] 
           end
        end 
    end                 

    puts "Buy on day " + stock_buy[0] + " " + "for $" + stock_buy[1]
    puts "Sell on day " + stock_sell[0] + " " + "for $" + stock_sell[1]
    puts "For a total profit of $" + (profit).to_s

end
    
stock_picker([17,3,6,9,15,8,6,1,10])


#Example result if code in run: 
#Buy on day 1 for $3
#Sell on day 4 for $15
#For a total profit of $12
