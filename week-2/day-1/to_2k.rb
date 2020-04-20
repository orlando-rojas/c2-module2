class String
    def to_2000
        result = ""
        self.downcase!
        str = split(' ')
        str.each_index do |i|
            a = str[i].split('')
            a.each_index do |x|
                if x.even? 
                    a[x].upcase!
                end
            end
            result += "#{a.join("")} "
        end
       str = result.split(" ").join(" ")
    end
end

p 'Hola, como estas?'.to_2000
p "Porque escribes de esa manera?".to_2000
p "What is wrong with you?".to_2000