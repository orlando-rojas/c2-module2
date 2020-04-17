class Restaurant
    def initialize(menu)
      @menu = menu
    end
  
    def cost(*orders)
        orders.inject(0) do |total_cost, order|
            total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
        end
    end
end
  
res = Restaurant.new({:rice => 3, :noodles => 2})
puts res.cost({:rice => 1, :noodles => 1},{:rice => 2, :noodles => 2})