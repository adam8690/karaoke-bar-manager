require('pry')
require_relative('../rooms.rb')
require_relative('../songs.rb')
require_relative('../guests.rb')
require_relative('../runner.rb')

require('minitest/autorun')
require('minitest/rg')

class TestRunner < MiniTest::Test

def setup

  @rooms = { "1" => @room1 = Room.new(10, [], []),
             "2" => @room2 = Room.new(15, [], [])}

  @songs = { "1" => @song1 = Song.new("Ruby", "Kaiser Chiefs", 3.40),
            "2" => @song2 = Song.new("Sexual", "Neiked", 3.15)}

  @runner = Runner.new

end

def test_add_guests_to_room1_not_room2
@runner.check_in_guest("Adam", @room1)
assert_equal(["Adam"], @room1.guests)
assert_equal([], @room2.guests)
end

def test_remove_guests_from_room1
@runner.check_in_guest("Baxter", @room1)
assert_equal(["Baxter"], @room1.guests)
@runner.check_out_guest("Baxter", @room1)
assert_equal([], @room1.guests)
end

def test_clear_room
@runner.check_in_guest("Baxter", @room1)
assert_equal(["Baxter"], @room1.guests)
@runner.clear_room(@room1)
assert_equal([], @room1.guests)
end

end