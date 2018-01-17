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
     if discount == 0
       # cash register was not initialized with an employee discount
          "There is no discount to apply."
      else
        discount_percentage = @discount/ 100.0 # make a float by adding .0 at the end of the number
        discount_value = discount_percentage * total

        @total = total - discount_value
       "After the discount, the total comes to $#{@total.round}."

     end
   end

  end

end
