class CashRegister

  attr_accessor :total, :disocunt

  def initialize(*discount)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
  end

  def apply_discount
    @total = @total * @employee_discount
  end

end
