def process_orders(orders)
    hash = Hash.new(0)
    orders.each do |x,y|
        hash[y] += 1
    end
    hash
end

people_orders = {
    "julio" => "pizza",
    "diego" => "saltado",
    "andres" => "hamburguer",
    "ximena" => "ceviche",
    "felipe" => "pizza",
    "jon" => "saltado",
    "snow" => "ceviche",
    "pepe" => "fried chicken",
    "queen of dragons" => "ice cream",
    "jose" => "hamburguer",
    "jafeth" => "fried chicken"
  }

puts process_orders(people_orders)