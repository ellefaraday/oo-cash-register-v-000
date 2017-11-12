class CashRegister

  attr_accessor :total

  def initialize(*employee_discount)
    @total = 0
    @employee_discount = employee_discount
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
  end

  def apply_discount
    @total = @total * @employee_discount
  end

end
