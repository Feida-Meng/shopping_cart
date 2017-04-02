require_relative "shopping_cart"

one = ShoppingCart.new("one")
one.add_product("Tesla",100000.00,"standard",3)
one.add_product("DeathStar",10000000.00,"imported",4)
one.add_product("Moon",10000.00,"exempt",2)

puts "Total cost: #{one.after_tax_price_sum}"
puts one.most_expensive_product

one.remove_product("Tesla",2)
one.remove_product("DeathStar",3)
puts one.most_expensive_product

puts "Total cost: #{one.after_tax_price_sum}"
