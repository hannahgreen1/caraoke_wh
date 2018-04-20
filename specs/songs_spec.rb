require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../song')
require_relative('../guest')


class SongsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("One More Time", "Daft Punk")
    @song2 = Songs.new("Shape Of You", "Ed Sheeran")
    @song3 = Songs.new("Believer", "Imagine Dragons")
  end

  def test_song_name
    answer = "One More Time"
    result =  @song1.name
    assert_equal(answer,result)
  end


    def test_artist_name
      answer = "Ed Sheeran"
      result =  @song2.artist
      assert_equal(answer,result)
    end
end
