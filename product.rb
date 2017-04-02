class Product

  attr_reader :name, :base_price, :tax_rate
  def initialize(name,base_price,tax_rate)
    @name = name
    @base_price = base_price.to_f
    @tax_rate = tax_rate.to_f
  end

end
