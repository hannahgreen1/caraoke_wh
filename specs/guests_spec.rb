require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')


class GuestsTest < MiniTest::Test

  def setup
    @room1 = Room.new("Blue Room", 3, 100, 10)
    @guest1 = Guests.new("Hannah", 50)
    @guest2 = Guests.new("Davina", 50)
    @guest3 = Guests.new("Rachel", 50)
  end

  def test_guest_name
    answer = "Hannah"
    result =  @guest1.name
    assert_equal(answer,result)
  end

  def test_guest_wallet
    answer = 50
    result =  @guest1.wallet
    assert_equal(answer,result)
  end
  #
  def test_guest_pay_fee
    @guest1.remove_cash(10)
    assert_equal(40, @guest1.wallet)
  end

end
