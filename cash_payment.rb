#ssr

require_relative 'payment_method'

class CashPayment < PaymentMethod
  def pay(passenger, amount)
    if passenger.deduct(amount)
      puts "Cash payment of ₦#{amount} received from #{passenger.name}."
      true
    else
      puts "Insufficient cash balance for #{passenger.name}."
      false
    end
  end
end
