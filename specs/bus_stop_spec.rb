require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop.rb")
require_relative("../person.rb")
require_relative("../bus.rb")


class BusStopTest < MiniTest::Test
  def setup
    @bus_stop_1 = BusStop.new("Partick")
  end

  def test_add_person_to_queue()
    person_1 = Person.new("Johnny", 30)
    @bus_stop_1.add_person_to_queue(person_1)
    assert_equal(1, @bus_stop_1.person_count())
  end


end
