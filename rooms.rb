require('pry')

class Room

attr_accessor :capacity, :playlist, :guests

def initialize(capacity, playlist, guests)
@capacity = capacity
@playlist = playlist
@guests = guests
end

# def add_guests_to_room(name)
#   guests.push(name)
# end

# def remove_guest_from_room(name)
# # if name == "All"
# #   guests = []
# # else
#   guests.delete(name)
# # end
# end

def add_song_to_playlist(playlist, song)
song_to_add = [song.title, song.artist, song.duration]
playlist.push(song_to_add)
end







end
