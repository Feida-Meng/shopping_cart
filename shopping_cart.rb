require_relative "product"

class ShoppingCart


  def initialize(argument)
    @argument = argument
    @products = []
  end

  def add_products(name,base_price,tax_rate)
    @products.push(Product.new(name,base_price,tax_rate))

  end

end


# Each shopping cart has a collection of products. It should also have the following functionality:
#
# add an product to the cart
# remove an product from the cart
# add up the total cost of all products in the cart before tax
# add up the total cost of all products in the cart after tax

# Add the ability to find the most expensive product in a cart.
# Allow a quantity to be associated with each product in the cart.
# What is the best way to store this information?
# How does it affect each of your other methods?
# Instead of storing the tax rate for each product,
# come up with a tax classification system
# (eg. standard, tax exempt, imported) so the rates are standardized across all products.
