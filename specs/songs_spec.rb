require("minitest/autorun")
require("minitest/rg")
require_relative("../songs.rb")

class SongsTest < MiniTest::Test

  def setup
      @song_1 = Songs.new("I did it my way")
      @song_2 = Songs.new("Wannabe")
      @song_3 = Songs.new("Let it be")
      @song_4 = Songs.new("We are the champions")

      songs = [@song_1, @song_2, @song_3, @song_4]
  end

  def test_song_name
    assert_equal("I did it my way", @song_1.song_name)
  end


end
