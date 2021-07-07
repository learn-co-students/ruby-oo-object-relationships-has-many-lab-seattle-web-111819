class Post
  attr_accessor :title, :author, :name
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    #returns nil if the post does not have an author
    #self.author.name

    if self.author == nil
      return nil
    else
      self.author.name
    end

  end
end