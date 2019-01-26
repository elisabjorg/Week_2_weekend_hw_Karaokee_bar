require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")

class GuestsTest < MiniTest::Test

  def setup
    @guest_1 = Guests.new("Ruth", 5)
    @guest_2 = Guests.new("Anna", 6)
    @guest_3 = Guests.new("Hekla", 1)

    guests = [@guest_1, @guest_2, @guest_3]
  end


  def test_guest_name
    assert_equal("Ruth", @guest_1.guest_name)
  end

  def test_guest_has_money
    assert_equal(6, @guest_2.guest_money)
  end



end
