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

    if self.discount 
      discount_percentage = (self.discount).to_f/100
      discount =  (self.total*discount_percentage)
      total_changed = self.total - discount
      self.total = total_changed
      puts "After the discount, the total comes to #{self.total}"
    elsif self.discount == nil
      puts "There is no discount to apply."
    end
end

end
