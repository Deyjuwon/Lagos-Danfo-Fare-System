class Route
  attr_reader :origin, :destination, :fare

  def initialize(origin, destination, fare)
    @origin = origin
    @destination = destination
    @fare = fare
  end

  def display_name
    "#{origin} to #{destination}"
  end
end
