def ping_pong(k)
    value = 0
    sum = 1

    for i in 1..k
        value += sum
        if i%7 == 0  || i.to_s.include?("7")
            sum=sum*-1
        end
    end
    value
end

puts ping_pong(28) 