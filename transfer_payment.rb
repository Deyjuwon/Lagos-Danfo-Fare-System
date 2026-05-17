# both CashPayment and TransferPayment have a pay method. 
# This is polymorphism because different classes can respond to the 
# same method in different ways.

require_relative 'payment_method'

class TransferPayment < PaymentMethod
  def pay(passenger, amount)
    if passenger.deduct(amount)
      puts "Transfer payment of ₦#{amount} confirmed for #{passenger.name}."
      true
    else
      puts "Transfer failed. Insufficient balance for #{passenger.name}."
      false
    end
  end
end
