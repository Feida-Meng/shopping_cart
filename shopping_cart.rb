require_relative "product"

class ShoppingCart

  attr_reader :name, :products
  def initialize(name)
    @name
    @products = []
    @price = []
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

    @price.push( base_price * (1 + tax_rate) )

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

  def base_price_sum
    @products.map(&:base_price).sum
  end

  def after_tax_price_sum
    @products.map(&:total_price).sum
  end

  def most_expensive_product
    max_price_product = @products.select { |p| p.total_price == @price.max }
    max_price_product_name = max_price_product.map {|p| p.name}.uniq!
  end

end



# Add the ability to find the most expensive product in a cart.
