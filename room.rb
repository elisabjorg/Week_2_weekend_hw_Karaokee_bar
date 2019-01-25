class Room

  attr_reader :room_name, :room_capacity, :guests_in_room

  def initialize(room_name, room_capacity, guests_in_room)
    @room_name = room_name
    @room_capacity = room_capacity
    @guests_in_room = guests_in_room
  end


  def check_in
    return @guests_in_room += guest.guest_spot
  end 

# def check_in(guest)
#     @guests_in_room << guest.guest_spot
#     return @guests_in_room.count
# end


# def check_in
#   @guests_in_room.push { |guest| }
# end



end
