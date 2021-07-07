class Song
    attr_reader :name 
    attr_accessor :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all 
    end
    def artist_name
        if self.artist
        self.artist.name
        else
        return nil
        end
    end
end