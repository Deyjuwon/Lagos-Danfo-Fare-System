# Passenger enters name.
# Passenger chooses a route.
# System shows fare.
# Passenger chooses payment method.
# Conductor collects fare.
# Passenger boards the danfo.
# Receipt is generated.

# Welcome to Lagos Danfo Fare System
# Passenger: Tunde
# Route: Yaba to CMS
# Fare: ₦700
# Payment Method: Transfer
# Payment successful.
# Tunde has boarded bus BDG-451-KJA.
# Receipt issued.


require_relative 'passenger'
require_relative 'route'
require_relative 'danfo_bus'
require_relative 'conductor'
require_relative 'cash_payment'
require_relative 'transfer_payment'

route = Route.new('Yaba', 'CMS', 700)
bus = DanfoBus.new('BDG-451-KJA', 14, route)
conductor = Conductor.new('Sule')
passenger = Passenger.new('Tunde', 2_000)

payment_method = TransferPayment.new

puts 'Welcome to Lagos Danfo Fare System'
puts "Route: #{route.display_name}"
puts "Fare: ₦#{route.fare}"

conductor.collect_fare(passenger, bus, payment_method)
puts "Remaining balance: ₦#{passenger.balance}"
