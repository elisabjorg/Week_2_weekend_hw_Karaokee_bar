class Guests

attr_reader :guest_name, :guest_money

  def initialize(guest_name, guest_money)
    @guest_name = guest_name
    @guest_money = guest_money
  end

  def customer_money
    return @guest_money
  end





end
