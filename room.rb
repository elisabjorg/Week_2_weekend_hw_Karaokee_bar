class Room

  attr_reader :room_name, :room_capacity, :room_playlist, :entry_fee

  def initialize(room_name, room_capacity, room_playlist, entry_fee)
    @room_name = room_name
    @room_capacity = room_capacity
    @guests_in_room = []
    @room_playlist = []
    @entry_fee = entry_fee
  end


  def add_guest(guest)
    @guests_in_room << guest
  end

  def check_in(guest)
    if check_capacity
      add_guest(guest)
    end
  end

  def count_guests
    return @guests_in_room.count
  end

  def check_out(guest)
    @guests_in_room.delete(guest)
  end

  def add_song(song_title)
    @room_playlist << song_title
  end

  def check_capacity
    if @room_capacity < @guests_in_room.count
      return "No space left in the room"
    end
      return true
  end

#started to do this but don't have time to look at it longer, check out later.
#   def pay_entry_fee
#     if guest_money < @entry_fee
#       return "Sorry, not enough money"
#     else
#       return true
#   end
# end

end
