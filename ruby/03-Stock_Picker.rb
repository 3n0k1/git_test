priceArray = [17,3,6,9,15,8,6,1,10,13,3,7,5,12,11,4,9,8]

def stock_picker(price)
	largest_diference = 0
	day_to_buy = 0
	day_to_sell = 0
	for i in 0...price.length - 1
		for j in (i+1)...price.length
			diference = price[i] - price[j]
			if(diference > largest_diference)
				largest_diference = diference
				day_to_buy = i
				day_to_sell = j
			end
		end
	end
	puts "Day to buy: #{day_to_buy}"
	puts "Day to sell: #{day_to_sell}"
	puts "Profit: #{largest_diference}"			
end

stock_picker(priceArray)