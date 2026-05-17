class DanfoBus
  attr_reader :plate_number, :capacity, :route, :passengers

  def initialize(plate_number, capacity, route)
    @plate_number = plate_number
    @capacity = capacity
    @route = route
    @passengers = []
  end

  def full?
    passengers.length >= capacity
  end

  def board(passenger)
    return false if full?

    passengers << passenger
    true
  end
end
