require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../songs')
require_relative('../guests')



class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Red Room")
    @room2 = Room.new("Blue Room")
    @room3 = Room.new("Yellow Room")

    @guest1 = Guests.new("Hannah")
    @guest2 = Guests.new("Davina")
    @guest3 = Guests.new("Rachel")
  end

  def test_room_name
    answer = "Blue Room"
    result =  @room2.room
    assert_equal(answer,result)
  end

  def test_count_guests
    assert_equal(0, @room1.count_guests)
  end

  def test_count_playlist
    assert_equal(0, @room1.count_playlist)
  end

  def test_check_in_guest_to_room
    @room1.check_in_guest_to_room(@guest1)
    assert_equal(1, @room1.count_guests())
  end

  def test_check_out_guest_to_room
    @room1.check_in_guest_to_room(@guest1)
    @room1.check_in_guest_to_room(@guest2)
    @room1.check_out_guest_to_room(@guest1)
    assert_equal(1, @room1.count_guests())
  end

  def test_add_song_to_playlist
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song2)
    @room1.add_song_to_playlist(@song3)
    assert_equal(3, @room1.count_playlist)
  end

  def test_all_remove_songs_from_playlist
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song2)
    @room1.add_song_to_playlist(@song3)
    @room1.remove_all_songs_from_playlist(@song3)
    assert_equal(0, @room1.count_playlist)
  end
end
