require('pry')

class Room

attr_accessor :capacity, :playlist, :guests

def initialize(capacity, playlist, guests)
@capacity = capacity
@playlist = playlist
@guests = guests
end

def add_guests_to_room
end



def add_song_to_playlist(playlist, song)
song_to_add = [song.title, song.artist, song.duration]
playlist.push(song_to_add)
end







end
