require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")

class GuestsTest < MiniTest::Test

  def setup
    @guest_1 = Guests.new("Ruth", 1)
    @guest_2 = Guests.new("Anna", 1)
    @guest_3 = Guests.new("Hekla", 1)

    guests = [@guest_1, @guest_2, @guest_3]
  end


  def test_guest_name
    assert_equal("Ruth", @guest_1.guest_name)
  end

  def test_guest_spot
    assert_equal(1, @guest_2.guest_spot)
  end



end
