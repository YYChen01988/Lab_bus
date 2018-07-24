class BusStop
  attr_reader :name

  def initialize(name)
    @name = name
    @queue = []
  end
  def add_person_to_queue(person)
    @queue << person
  end

  def person_count()
    return @queue.count()
  end


end
