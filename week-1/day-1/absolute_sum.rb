def sum a,b
    sum = (a+b)
    if(sum<0)
        sum = Math.sqrt(sum**2).to_i
    end
    return sum
end

puts sum(-2,-5)