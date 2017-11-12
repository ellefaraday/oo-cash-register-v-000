class CashRegister

  attr_accessor :total, :discount, :items

  @items = []

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    @items << title
    @last_item = title
    @last_price = price
    @last_quantity = quantity
  end

  def apply_discount
    if discount != nil
      @total = @total * (1 - (@discount/100))
      "After the discount, the total comes to #{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= (@last_price * @last_quantity)
  end

end
