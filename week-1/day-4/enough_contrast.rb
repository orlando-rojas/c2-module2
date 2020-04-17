class Color
    attr_accessor :r, :g, :b

    def initialize(r, g, b)
      @r = r
      @g = g
      @b = b
    end
  
    def brightness_index
      (r*299 + g*587 + b*114) / 1000
    end
  
    def brightness_difference(another_color)
        if another_color.is_a? Color
            (brightness_index - another_color.brightness_index).abs
        else
            puts "Invalid color"
        end
    end
  
    def hue_difference(another_color)
        if another_color.is_a? Color
            hue = (r-another_color.r).abs + (g-another_color.g).abs + (b-another_color.b).abs      
        else
            puts "Invalid color"
        end
    end
  
    def enough_contrast?(another_color)
        if another_color.is_a? Color
            brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
        else
            puts "Invalid color"
        end
    end
end

color_a = Color.new(42, 21, 58)
color_b = Color.new(240, 41, 25)

puts color_a.brightness_index
puts color_a.brightness_difference(color_b)
puts color_a.hue_difference(color_b)
puts color_a.enough_contrast?(color_b)