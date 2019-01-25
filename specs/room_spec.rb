require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guests.rb")
# require_relative("../songs.rb")

class RoomTest < MiniTest::Test

  def setup
      @room_1 = Room.new("Victoria", 4, 0)
      @room_2 = Room.new("Emma", 3, 1)
      @room_3 = Room.new("Geri", 6, 0)
      @room_4 = Room.new("Mel B", 8, 0)
      @room_5 = Room.new("Mel C", 2, 0)
      rooms  = [@room_1, @room_2, @room_3, @room_4, @room_5]

      @guest_1 = Guests.new("Ruth", 1)
      @guest_2 = Guests.new("Anna", 1)
      @guest_3 = Guests.new("Hekla", 1)
      @guest_4 = Guests.new("Tinna", 1)
      @guest_5 = Guests.new("Lovisa", 1)
      guests = [@guest_1, @guest_2, @guest_3, @guest_4, @guest_5]
    end

    def test_room_name
      assert_equal("Victoria", @room_1.room_name)
    end

    def test_room_capacity
      assert_equal(6, @room_3.room_capacity)
    end

    def test_check_in_guests
      @room_1.check_in(@guest_1)
      assert_equal(1, @room_1.guests_in_room)
    end

    def test_how_many_guests_in_room
      @room_1.check_in(@guest_1)
      @room_1.guests_in_room
      assert_equal(1, @room_1.guests_in_room)
    end

    def test_check_out_guests
      @room_2.check_out(@guest_1)
      assert_equal(0, @room_2.guests_in_room)
    end



end
