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
  new_register = CashRegister.new(self.discount)
  discount_percentage = (new_register.discount/100)
  discount = (new_register.total*discount_percentage)
  total_changed = new_register.total - discount
  new_register.total = total_changed


end

end
