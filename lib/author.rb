class Author
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        self.add_post(Post.new(title))
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def self.post_count
        Post.all.select {|post| post.author}.count
    end

    def self.all
        @@all
    end

end