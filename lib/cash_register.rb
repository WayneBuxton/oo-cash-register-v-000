require "pry"
class CashRegister

  attr_accessor :total, :discount, :transaction, :item

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @item = []
    @transaction = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
     if discount == 0
          "There is no discount to apply."
      else
        discount_percentage = @discount/ 100.0
        discount_value = discount_percentage * total

        @total = total - discount_value
       "After the discount, the total comes to $#{@total.round}."

     end
   end

end
