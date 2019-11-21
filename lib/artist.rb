require'pry'

class Artist
    attr_reader :name 

    def initialize(name)
        @name = name 
    end 

    def songs
        Song.all.each {|song| song == self}
    end 

    def add_song(song)
        song.artist = self 
    end 

    def add_song_by_name(song)
        new_song = Song.new(song)
        new_song.artist = self 
    end 

    def self.song_count
        artist_songs = Song.all.each {|song| song == self}
        artist_songs.count 
    end 

end 