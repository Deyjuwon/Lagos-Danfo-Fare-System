class PaymentMethod
  def pay(passenger, amount)
    raise NotImplementedError, 'Subclasses must implement pay'
  end
end
