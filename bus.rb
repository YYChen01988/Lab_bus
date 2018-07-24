class Bus
  attr_reader :route_number, :destination
  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def passengers_count()
    return @passengers.count()
  end

  def pick_up(new_person)
    @passengers << new_person 
  end




end
