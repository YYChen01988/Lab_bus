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

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus()
    @passengers.clear()
  end

  def pick_up_from_stop(stop)
    no_of_person = stop.person_count()
    for person in stop.return_queue()
      pick_up(person)
    end
    stop.empty_queue()

  end


end
