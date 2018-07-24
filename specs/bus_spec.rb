require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusTest < MiniTest::Test
  def setup
    @person_1 = Person.new("Robert", 50)
    @bus_1 = Bus.new(22, "Ocean Terminal")
    @bus_1.pick_up(@person_1)
  end

  def test_drive()
    assert_equal("Brum brum", @bus_1.drive())
  end

    def test_get_number_of_passengers()
      assert_equal(1, @bus_1.passengers_count())
    end
    def test_pick_up()
      person_2 = Person.new("Amy", 25)
      @bus_1.pick_up(person_2)
      assert_equal(2, @bus_1.passengers_count())
    end

    def test_drop_off()
      @bus_1.drop_off(@person_1)
      assert_equal(0, @bus_1.passengers_count())
    end

    def test_empty_bus()
      @bus_1.empty_bus()
      assert_equal(0, @bus_1.passengers_count())
    end

    def test_pick_up_from_stops()
      bus_stop_1 = BusStop.new("Partick")
      person_in_queue = Person.new("Tony", 50)
      bus_stop_1.add_person_to_queue(person_in_queue)
      @bus_1.pick_up_from_stop(bus_stop_1)
      assert_equal(0, bus_stop_1.person_count())
      assert_equal(2, @bus_1.passengers_count())

    end


end
