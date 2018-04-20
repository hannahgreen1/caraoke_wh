class Room

attr_reader :room, :guests, :playlist

  def initialize(room)
    @room = room
    @guest = []
    @playlist = []
  end

def count_guests
  @guest.size()
end

def count_playlist
  @playlist.size()
end

  def check_in_guest_to_room(guest)
   @guest.push(guest)
  end

  def check_out_guest_to_room(guest)
   @guest.pop
  end

  def add_song_to_playlist(song)
   @playlist.push(song)
  end

  def remove_all_songs_from_playlist(song)
   @playlist.delete(song)
  end
end
