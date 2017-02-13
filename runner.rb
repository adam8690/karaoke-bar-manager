require_relative('./rooms.rb')
require_relative('./songs.rb')
require_relative('./guests.rb')

class Runner


def check_in_guest(name, room)
  if room.guests.length < room.capacity
  room.guests.push(Guest.new(name).name)
  puts "#{name} added to room"
    else puts "No more room in the room!!"
  end
end

def check_out_guest(name, room)
  room.guests.delete(name)
end

def clear_room(room)
  room.guests = []
end

def get_rooms_availability(room1, room2) #untested 
puts "Room 1 has #{room1.guests.length} guests and can hold #{room1.capacity}"
puts "Room 2 has #{room2.guests.length} guests and can hold #{room2.capacity}"
end

def run

  @rooms = { "1" => @room1 = Room.new(10, [], []),
             "2" => @room2 = Room.new(15, [], [])}

  @songs = { "1" => @song1 = Song.new("Ruby", "Kaiser Chiefs", 3.40),
            "2" => @song2 = Song.new("Sexual", "Neiked", 3.15)}


system('clear')
puts "initialising..."
sleep(2)
puts "creating song list..."
sleep(2)
puts "checking rooms..."
sleep(2)
puts "one moment..."
sleep(1)
puts "loading logo..."
sleep(1)
system('clear')
puts "

██╗  ██╗ █████╗ ██████╗  █████╗  ██████╗ ██╗  ██╗███████╗
██║ ██╔╝██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██║ ██╔╝██╔════╝
█████╔╝ ███████║██████╔╝███████║██║   ██║█████╔╝ █████╗  
██╔═██╗ ██╔══██║██╔══██╗██╔══██║██║   ██║██╔═██╗ ██╔══╝  
██║  ██╗██║  ██║██║  ██║██║  ██║╚██████╔╝██║  ██╗███████╗
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝

Hello there, welcome to Karaoke bar management system version 1.0 by Adam Baxter"


exit = "n"
while exit != "y"
puts "
Would you like to: 

1. Check in a guest.
2. Check out a guest.
3. Clear a room.
4. Check room availability.
5. See Master song list.
6. Check room playlists are empty.

X. Exit.

Indicate your selection with a number."

selection = gets.chomp

case selection
when "1"
  puts "Guest Name?"
  g_name = gets.chomp
  puts "Room number?"
  g_room = @rooms[gets.chomp]
  check_in_guest(g_name, g_room)
  # puts "Guest #{g_name} has been checked in to #{g_room}"
  get_rooms_availability(@room1, @room2)
when "2"
  puts "Guest Name?"
  g_name = gets.chomp
  puts "Room Number?"
  g_room = @rooms[gets.chomp]
  check_out_guest(g_name, g_room)
  puts "Guest #{g_name} has been checked out of #{g_room}"
when "3"
  puts "Room number to clear?"
  room_to_clear = @rooms[gets.chomp]
  clear_room(room_to_clear)
when "4"
  get_rooms_availability(@room1, @room2)
when "5"
  for song in @songs.values
    song_mins = song.duration.to_i
    song_secs = (song.duration * 60) % 60
    puts "#{@songs.key(song)}: #{song.title} - #{song.artist} - #{song_mins}:#{song_secs.to_i.to_s.rjust(2,"0")}"
  end
when "6"
  if @room1.playlist == [] 
    puts "Room 1: playlist empty, add a song!"
  else 
    puts "The playlist is not empty, but there is no way for the runner to add songs yet so I don't know how this could be!"
  end
  if @room2.playlist == [] 
    puts "Room 2: playlist empty, add a song!"
    else 
      puts "The playlist is not empty, but there is no way for the runner to add songs yet so I don't know how this could be!"
  end

when "X"
  puts "Are you sure you want to exit? y/n"
  if gets.chomp == "y"
  exit = "y"
end
else puts "Invalid selection, try again."
end


end
end
end

runner = Runner.new
runner.run


