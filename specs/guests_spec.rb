require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../song')
require_relative('../guest')


class GuestsTest < MiniTest::Test

  def setup
    @guest1 = Guests.new("Hannah")
    @guest2 = Guests.new("Davina")
    @guest3 = Guests.new("Rachel")
  end

  def test_guest_name
    answer = "Hannah"
    result =  @guest1.name
    assert_equal(answer,result)
  end


end
