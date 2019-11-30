class Artist
  attr_accessor :name
  @@all= []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all
  end

  def add_song(song)
    #takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist

    song.artist = self
  end

  def add_song_by_name(song_name)
    #takes in an argument of a song name, creates a new song with it and associates the song and artist
    new_song = Song.new(song_name)
    new_song.artist = self
    new_song.title = song_name
  end

  def self.song_count #Artist.song_count
    #is a class method that returns the total number of songs associated to all existing artists
    Song.all.each {|song| song.artist == self}.count
  end
end