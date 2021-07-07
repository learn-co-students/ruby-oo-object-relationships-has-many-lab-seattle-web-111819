class Author
    attr_accessor :name, :posts
    @@post_count = 0
    def initialize(name)
        @name = name
    end
    def self.all
        @@all
    end
    def posts
        Post.all.select {|post| post.author == self }
    end
    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        p = Post.new(post_title)
        add_post(p)
    end
    def self.post_count
        Post.all.select{|post| post.author}.count
    end


end