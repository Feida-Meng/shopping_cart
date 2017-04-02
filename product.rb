class Product

  attr_reader :name, :base_price, :tax_rate, :total_price
  def initialize(name,base_price,tax_rate)
    @name = name
    @base_price = base_price.to_f
    @tax_rate = tax_rate.to_f
    @total_price = @base_price * (1 + @tax_rate)
  end



end
