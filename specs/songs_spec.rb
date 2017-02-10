require_relative('../songs.rb')

require('minitest/autorun')
require('minitest/rg')

class TestSong < MiniTest::Test


def setup

  @song = Song.new("Song 1", "notBlur", 3.00)

end

def test_song_has_title
  assert_equal("Song 1", @song.title)
end

def test_song_has_artist
  assert_equal("notBlur", @song.artist)
end

def test_song_has_duration
  assert_equal(3.00, @song.duration)
end

end