class Room

  attr_reader :room_name, :room_capacity, :guests_in_room, :room_playlist

  def initialize(room_name, room_capacity, guests_in_room, room_playlist)
    @room_name = room_name
    @room_capacity = room_capacity
    @guests_in_room = guests_in_room
    @room = []
    @room_playlist = []
  end


  def check_in(guest)
    @room << guest
    return @guests_in_room += guest.guest_spot
  end

  def check_out(guest)
    @room.delete(guest)
    return @guests_in_room -= guest.guest_spot
  end

  def add_song(song_title)
    @room_playlist << song_title
  end
end
