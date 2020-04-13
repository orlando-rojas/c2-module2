
def  calculate_price

    quantity = {"individual" => 1, "six pach" => 6, "dozen" => 12}
    bread = { "vanilla" => 0.5, "chocolate" => 0.75, "red velvet" => 0.85 }
    frosting = { "vanilla" => 0.6, "oreo" => 1.1, "mint chocolate" => 1.45}
    filling = {"nutella" => 1, "strawberry" => 0.55, "peanut butter" => 0.45, "" => 0}

    print "Choose the amount of cupcakes (Individual, Six Pach, Dozen) "
    order_quantity = gets.chomp.downcase
    print "What kind of bread do you prefer? (Vanilla, Chocolate, Red velvet) "
    order_bread = gets.chomp.downcase
    print "What kind of frosting do you prefer? (Vanilla, Oreo, Mint chocolate) "
    order_frosting = gets.chomp.downcase
    print "What kind of filling do you prefer? (Nutella, Strawberry, Peanut butter) "
    order_filling = gets.chomp.downcase

    sub_total = (bread["#{order_bread}"] + frosting["#{order_frosting}"] + filling["#{order_filling}"]) * quantity["#{order_quantity}"]

    case order_quantity
    when "individual"
        discount = 0
    when "six pach"
        discount = sub_total/25
    when "dozen"
        discount = sub_total/10
    else
        puts "Wrong amount" 
        exit!
    end

    total = (sub_total - discount).round(1)
    puts "$#{total}"
end

calculate_price