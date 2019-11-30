class Song
  attr_accessor :name, :title, :artist
  @@all = []

  def initialize(name)
    @name = name
    @title = title
    @artist = artist
    @@all << self
  end

  def self.all
  @@all
  end

  def artist_name
    if self.artist == nil
      return nil
    else
    self.artist.name
    end
  end
end