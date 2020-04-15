def summation(n)
    result = 0
    for i in 1..n
        result += yield(i) 
    end
    result
end

puts summation(3) { |val| val * 2 }