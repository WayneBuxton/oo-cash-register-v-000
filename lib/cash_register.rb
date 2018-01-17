rrequire 'pry'
class CashRegister
   attr_accessor :total, :discount, :items, :transaction

   def initialize(discount = 0)
       @total = 0
       @discount = discount
       @items = []
       @transaction = []
   end

    def add_item(title, price, quantity = 1)

         self.total = price * quantity + total

         quantity.times do
           self.items << title
         end
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
