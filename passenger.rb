class Passenger
  attr_reader :name
  attr_accessor :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def can_afford?(amount)
    balance >= amount
  end

  def deduct(amount)
    return false unless can_afford?(amount)

    self.balance -= amount
    true
  end
end
