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

def apply_discount(discount)
  new_employe_subtotal = CashRegister.new(discount)
  discount_percentage = new_employe_total.discount /100
  employee_discount = new_employe_subtotal.total-(new_employe_subtotal.total * (discount_percentage)) 
  new_employe_subtotal.total = employee_discount
  

end

end
