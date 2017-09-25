class BankAccount
 def initialize(input_holder_name, input_amount, input_type)
   @holder_name = input_holder_name
   @amount = input_amount
   @type = input_type
 end
#getter or accessor
 def holder_name()
   return @holder_name
 end

 def account_balance()
   return @amount
 end

 def account_type()
   return @type
 end
#setter or mutator
 def set_holder_name(new_holder)
  @holder_name = new_holder
 end

 def set_account_balance(new_balance)
  @amount = new_balance
 end

 def set_account_type(new_type)
  @type = new_type
 end

 def pay_into_account(value)
  @amount += value
 end

 def withdraw_from_account(value)
   @amount -= value
 end

 def pay_monthly_fee()
   if @type == "business"
   @amount -= 50
   else @amount -= 10
   end
 end

end
