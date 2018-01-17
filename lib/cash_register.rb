require "pry"
class CashRegister

  attr_accessor :total, :discount, :transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    discount_percentage = @discount/ 100.0
    @total -= discount_percentage
  end

end
