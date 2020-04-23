require 'csv'
grades = CSV.read("grades.csv", :quote_char => "|")

h = Hash.new(0)
grades.each do |row|
    h[row[1]] = row[7].to_i
end
a = h.sort_by { |k, v| -v }.take(3)
i = 0
a.each {|x,y| puts "#{i+=1} - #{x} with a final grade of #{y}"}