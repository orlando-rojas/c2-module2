def filter(arr)
    result = []
    for i in 0...arr.length
        if(yield(arr[i]))
            result.push(arr[i])
        end
     end
     result
end

test_array = [2, 3, 4, 5]
puts filter(test_array) { |element| element > 3}