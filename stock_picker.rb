def best_profit_per_day(array)
    i = 1
    result ={}
    result_array = []
    new_result_array = []
    new_result_hash = {}
    max_difference_array = []
    
    
    while i+1<array.length+1
        max_difference = array[i] - array[0..i].min
        index_max = i
        index_min = array.find_index(array[0..i].min)
        max_difference_array.push(max_difference)
        new_result_hash["i#{index_max}_#{index_min}"] = max_difference
        i+=1
    end
    new_result_hash   
end

def stock_picker(array)
    final_result = []
    biggest_profit = best_profit_per_day(array)
    max_profit = biggest_profit.max_by{|k,v| v}
    p biggest_profit_key = max_profit[0].split("")
    p final_result.push(biggest_profit_key[3].to_i, biggest_profit_key[1].to_i)
end

stock_prices = [1,17,3,6,9,15,8,6,10,25,80]
stock_picker(stock_prices)

