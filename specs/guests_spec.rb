require_relative('../guests.rb')
require('minitest/autorun')
require('minitest/rg')

class TestGuest < MiniTest::Test


def setup

  @guest = Guest.new("Adam")

end

def test_return_guest_name
assert_equal("Adam", @guest.name)
end












end
