require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest < MiniTest::Test
  def setup
    @person_1 = Person.new("Ying", 30)
  end

end
