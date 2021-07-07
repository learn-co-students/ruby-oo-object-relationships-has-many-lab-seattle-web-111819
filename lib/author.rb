class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def posts
        Post.all 
    end 

    def add_post(post)
        post.author = self  
    end 

    def add_post_by_title(post_title)
        new_post_title = Post.new(post_title)
        new_post_title.author = self 
    end 

    def self.post_count
        Post.all.count
    end 







end 