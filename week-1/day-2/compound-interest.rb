def calculate_compounded_interest(money,rate,period)
    i = 1
    while(i<=period)
        money = (money + (money*rate/100)).to_f.round(1)
        i += 1
    end
    return money
end

puts calculate_compounded_interest(1000,1,3)