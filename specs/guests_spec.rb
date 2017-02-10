require_relative('../guests.rb')
require('minitest/autorun')
require('minitest/rg')

class TestGuest < MiniTest::Test


def setup

  @guest = Guest.new("Party 1", "Adam", ["song 1"], 50)

end

def test_return_guest_party
  assert_equal("Party 1", @guest.party)
end

def test_return_guest_name
assert_equal("Adam", @guest.name)
end

def test_return_guest_songs
assert_equal(["song 1"], @guest.songs)
end

def test_return_guest_cash
  assert_equal(50, @guest.cash)
end











end
