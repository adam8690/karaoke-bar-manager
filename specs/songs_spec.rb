require_relative('../songs.rb')

require('minitest/autorun')
require('minitest/rg')

class TestSong < MiniTest::Test


def setup

  @song1 = Song.new("Ruby", "Kaiser Chiefs", 3.40)
  @song2 = Song.new("Sexual", "Neiked", 3.15)
end

def test_song_has_title
  assert_equal("Ruby", @song1.title)
end

def test_song_has_artist
  assert_equal("Neiked", @song2.artist)
end

def test_song_has_duration
  assert_equal(3.40, @song1.duration)
end




end