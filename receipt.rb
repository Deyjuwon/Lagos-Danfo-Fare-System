class Receipt
  def initialize(passenger, route, amount, payment_type, plate_number)
    @passenger = passenger
    @route = route
    @amount = amount
    @payment_type = payment_type
    @plate_number = plate_number
  end

  def print
    puts '----- DANFO RECEIPT -----'
    puts "Passenger: #{@passenger.name}"
    puts "Route: #{@route.display_name}"
    puts "Fare: ₦#{@amount}"
    puts "Payment: #{@payment_type}"
    puts "Bus: #{@plate_number}"
    puts '-------------------------'
  end
end
