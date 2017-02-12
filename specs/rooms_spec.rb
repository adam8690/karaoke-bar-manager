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

def test_add_songs_to_room1_playlist_not_room2
  @room1.add_song_to_playlist(@room1.playlist, @song1)
  @room1.add_song_to_playlist(@room1.playlist, @song2)
  assert_equal([["Ruby", "Kaiser Chiefs", 3.40], ["Sexual", "Neiked", 3.15]], @room1.playlist)
  assert_equal(@room2.playlist, [])
end



end