def map(arr)
    result = []
    for i in 0...arr.length
        result.push(yield(arr[i]))
    end
    result
end

test_array = [2, 3, 4, 5]
puts map(test_array) { |element| element * 3}
# Result: [6, 9, 12, 15]