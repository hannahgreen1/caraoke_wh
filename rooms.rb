class Room

attr_reader :name, :guests, :playlist, :capacity, :fee, :till

  def initialize(name, capacity, till, fee)
    @name = name
    @guests = []
    @playlist = []
    @capacity = capacity
    @till = till
    @fee = fee
  end

  def count_guests
    @guests.size()
  end

  def count_playlist
    @playlist.size()
  end

  def check_in_guest_to_room(guest)
   @guests.push(guest) unless is_full?
   guest.remove_cash(@fee)
   add_money(@fee)
  end

  def check_out_guest_to_room(guest)
   @guests.pop
  end

  def add_song_to_playlist(song)
   @playlist.push(song)
  end

  def remove_all_songs_from_playlist(song)
   @playlist.delete(song)
  end

  def is_full?
    @guests.count() == capacity
  end

  def add_money(amount)
    @till += amount
  end


end
