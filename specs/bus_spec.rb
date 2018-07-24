require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test
  def setup
    @bus_1 = Bus.new(22, "Ocean Terminal")

  end

  def test_drive()
    assert_equal("Brum brum", @bus_1.drive())
  end

    def test_get_number_of_passengers()
      assert_equal(0, @bus_1.passengers_count())
    end
    def test_pick_up()
      person_1 = Person.new("Amy", 25)
      @bus_1.pick_up(person_1)
      assert_equal(1, @bus_1.passengers_count())
    end

end
