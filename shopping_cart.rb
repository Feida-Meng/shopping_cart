require_relative "product"

class ShoppingCart

  attr_reader :name, :products
  def initialize(name)
    @name
    @products = []
  end

  def add_product(name,base_price,tax_class,qty)

    case tax_class
    when "standard"
      tax_rate = 0.10
    when "imported"
      tax_rate = 0.14
    when "exempt"
      tax_rate = 0.00
    end

    qty.times do
      @products.push(Product.new(name,base_price,tax_rate))
    end

  end

  def remove_product(name,qty)
    product_to_be_removed = @products.select {|p| p.name == name}
    total_qty = product_to_be_removed.length

      if qty.to_i > total_qty
        puts "Learn how to count first!"
      elsif

        @products -= product_to_be_removed[ (total_qty - qty - 1),qty ]

      end

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
