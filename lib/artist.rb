class Artist
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        self.add_song(Song.new(name))
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.song_count
        Song.all.select {|song| song.artist}.count
    end

    def self.all
        @@all
    end

end