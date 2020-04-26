class CashRegister

attr_accessor :total

def initialize(age = 0)
    @total = 0
    @discount= age
end

def discount
  @discount
end

def add_item(title,price,quantity=1)
 @quantity = quantity
  self.total += price * @quantity
end

def apply_discount


 discount_percentage = (self.discount).to_f/100
 discount =  (self.total*discount_percentage)
 total_changed = self.total - discount
 self.total = total_changed
 if self.discount == 0
   return "There is no discount to apply."
 else
   return"After the discount, the total comes to $#{self.total.to_i}."
 end

end

end
