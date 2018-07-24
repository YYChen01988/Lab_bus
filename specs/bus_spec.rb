require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")

class BusTest < MiniTest::Test
  def setup
    @bus_1 = Bus.new(22, "Ocean Terminal")
  end

  def test_drive()
    assert_equal("Brum brum", @bus_1.drive())
  end

end
