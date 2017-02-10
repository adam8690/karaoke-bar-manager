require_relative('../rooms.rb')

require('minitest/autorun')
require('minitest/rg')

class TestRoom < MiniTest::Test


def setup

  @rooms = Room.new(10, ["song 1", "song 2"], ["Adam", "Simon"])

end


def test_room_has_guests
  assert_equal(["Adam", "Simon"], @rooms.guests)
end

def test_room_has_playlist
  assert_equal(["song 1", "song 2"], @rooms.playlist)
end

def test_room_capacity
  assert_equal(10, @rooms.capacity)
end



end