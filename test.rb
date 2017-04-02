require_relative "shopping_cart"

one = ShoppingCart.new("one")
one.add_product("Apple",1000.00,0.1,3)
one.add_product("DeathStar",10000000.00,0.1,4)
one.remove_product("Apple",2)
one.remove_product("DeathStar",3)


puts one.products.length
