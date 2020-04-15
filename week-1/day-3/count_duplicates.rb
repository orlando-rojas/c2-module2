def count_duplicates(numbers)
    result = 0
    numbers.sort!
    temp_array = numbers.select {|n| numbers.count(n)>1}
    temp_array.each do |x|
        if (x != temp_array[temp_array.index(x)+1])
            uniq_array.push(x)
        end
    end
    uniq_array = temp_array.uniq
    uniq_array.each do |n|
        result += temp_array.count(n)-1
    end
    result
end

numbers_1 = [1, 2, 3, 2, 5, 8, 5, 10, 5]  #3
numbers_2 = [17, 13, 19, 17, 19, 7, 10, 11, 5, 11, 18, 13, 3, 12, 19, 0, 17, 1, 12, 12, 5, 12, 1, 1, 0, 14, 5, 4, 9, 9, 3, 10, 9, 9, 12, 16, 9, 17, 12, 11, 2, 2, 14, 8, 11, 12, 7, 1, 16, 2, 14]

puts count_duplicates(numbers_2) #returns 33