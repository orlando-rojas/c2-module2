def sum(*numbers)
    sum = 0;
    numbers.each do |n|
        sum += n
    end
    sum
end

puts sum(10, 2, 3, 4, 5, 1, 20)
#returns 45