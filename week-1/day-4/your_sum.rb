class MyArray
    attr_reader :array
  
    def initialize(array)
      @array = array
    end
  
    def sum(initial_value = 0)
        if block_given?
            sum = initial_value
            array.each do |x|
                sum += yield(x)
            end
            sum
        else
            array.reduce(:+) + initial_value
        end
    end
  end

  my_array = MyArray.new([1, 2, 3])
  puts my_array.sum
  puts my_array.sum(10)
  puts my_array.sum(0) {|n| n ** 2 }