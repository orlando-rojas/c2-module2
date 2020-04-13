class Person
    attr_reader :height, :weight

    def initialize(height, weight) 
        @height = height
        @weight = weight
    end

    def bmi
        bmi = (weight / height**2).round(2)
        return bmi
    end
end

julio = Person.new(1.85, 80)

puts julio.bmi