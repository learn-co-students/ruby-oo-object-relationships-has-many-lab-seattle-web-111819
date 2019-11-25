class Artist
    attr_accessor :name
        @@all = []
    def initialize(name)
        @name=name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
       Song.all.select {|song| song.artist == self}
    end
    def add_song(song)
        song.artist = self
    end
    def add_song_by_name(song_name)
        s = Song.new(song_name)
        # s = Song.all.find {|song| song.name == song_name}
        add_song(s)
        #use name of song to find instance of song
    end

    def self.song_count
        Song.all.select {|song| song.artist}.count
    end


end

