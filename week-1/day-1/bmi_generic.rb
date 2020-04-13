print "Show me the weight (kg): "
weight = gets.chomp.to_f
print "Show me the height (m): "
height = gets.chomp.to_f

mbi = (weight / height**2).round(2)

puts mbi