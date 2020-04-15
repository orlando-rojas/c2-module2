def non_duplicated_values(values)
    values.select {|n| values.count(n) == 1}
end

test = [1,2,2,3,3,4,5]
puts non_duplicated_values(test) #returns [1,4,5]