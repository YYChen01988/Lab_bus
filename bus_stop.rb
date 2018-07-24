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

  def return_queue()
    return @queue
  end
   def empty_queue()
     @queue.clear()
   end

end
