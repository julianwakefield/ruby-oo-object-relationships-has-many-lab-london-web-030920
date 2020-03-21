class Author

    attr_accessor :name, :post

    @@all = []
    def initialize(name)
        @name = name
        
       
    end

    def posts
        Post.all.select{|post|post.author == self}
            end

    def add_post(post)
        @@all << post
        post.author = self
    end

    def add_post_by_title(post_title)
        author = Post.new(post_title)
        add_post(author)
    end
    
        
    def self.post_count
        Post.all.count
    end
    
end
