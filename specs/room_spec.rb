require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

class RoomTest < MiniTest::Test

  def setup
      @song_1 = Songs.new("I did it my way")
      @song_2 = Songs.new("Wannabe")
      @song_3 = Songs.new("Let it be")
      songs = [@song_1, @song_2, @song_3]

      @guest_1 = Guests.new("Ruth", 5)
      @guest_2 = Guests.new("Anna", 6)
      @guest_3 = Guests.new("Hekla", 1)
      guests = [@guest_1, @guest_2, @guest_3]

      playlists = [@room_1_playlist, @room_2_playlist, @room_3_playlist]
      @room_1 = Room.new("Victoria", 4, @room_1_playlist, 6)
      @room_2 = Room.new("Emma", 3, @room_2_playlist, 4)
      @room_3 = Room.new("Geri", 1, @room_3_playlist, 2)
      rooms  = [@room_1, @room_2, @room_3]


    end

    def test_room_name
      assert_equal("Victoria", @room_1.room_name)
    end

    def test_room_capacity
      assert_equal(1, @room_3.room_capacity)
    end

    def test_check_in_guests
      @room_1.check_in(@guest_1)
      assert_equal(1, @room_1.count_guests)
    end

    def test_how_many_guests_in_room__one_person_added
      @room_1.check_in(@guest_1)
      assert_equal(1, @room_1.count_guests)
    end

    def test_check_out_guests
      @room_2.check_out(@guest_1)
      assert_equal(0, @room_2.count_guests)
    end

    def test_how_many_guests_in_room__many_people_added
      @room_1.check_in(@guest_1)
      @room_1.check_in(@guest_2)
      @room_1.check_in(@guest_3)
      assert_equal(3, @room_1.count_guests)
    end
    #
    def test_add_song_to_room
      @room_1.add_song(@song_1.song_name)
      assert_equal(["I did it my way"], @room_1.room_playlist)
    end

    def test_add_song_to_room__room_2
      @room_2.add_song(@song_2.song_name)
      assert_equal(["Wannabe"], @room_2.room_playlist)
    end

    def test_check_in_more_guests_then_capacity
      @room_3.check_in(@guest_1)
      @room_3.check_in(@guest_2)
      assert_equal("No space left in the room", @room_3.check_capacity)
    end

    def test_room_entry_fee
      assert_equal(6, @room_1.entry_fee)
    end


end
