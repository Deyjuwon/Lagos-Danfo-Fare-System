# This class uses dependency injection because it receives the 
# payment_method object from outside instead of creating it internally. 
# That supports the Dependency Inversion Principle.
require_relative 'receipt'

class Conductor
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def collect_fare(passenger, bus, payment_method)
    fare = bus.route.fare

    paid = payment_method.pay(passenger, fare)
    return unless paid

    boarded = bus.board(passenger)

    if boarded
      puts "#{passenger.name} has boarded bus #{bus.plate_number}."
      Receipt.new(
        passenger,
        bus.route,
        fare,
        payment_method.class.name,
        bus.plate_number
      ).print
    else
      puts "Bus #{bus.plate_number} is full. #{passenger.name} cannot board."
    end
  end
end
