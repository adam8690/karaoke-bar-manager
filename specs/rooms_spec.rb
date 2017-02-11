require('pry')
require_relative('../rooms.rb')
require_relative('../songs.rb')

require('minitest/autorun')
require('minitest/rg')

class TestRoom < MiniTest::Test


def setup

  @room1 = Room.new(10, [], [])
  @room2 = Room.new(15, [], [])
 

  @song1 = Song.new("Ruby", "Kaiser Chiefs", 3.40)
  @song2 = Song.new("Sexual", "Neiked", 3.15)
end


# def test_room_has_guests
#   assert_equal(["Adam", "Simon"], @rooms.guests)
# end

# def test_room_has_playlist
#   assert_equal(["song 1", "song 2"], @rooms.playlist)
# end

# def test_room_capacity
#   assert_equal(10, @rooms.capacity)
# end

def test_add_songs_to_room_playlist
  @room1.playlist = []
  @room1.add_song_to_playlist(@room1.playlist, @song1)
  @room1.add_song_to_playlist(@room1.playlist, @song2)
  assert_equal([["Ruby", "Kaiser Chiefs", 3.40], ["Sexual", "Neiked", 3.15]], @room1.playlist)
end




end