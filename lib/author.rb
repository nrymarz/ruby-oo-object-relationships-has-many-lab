class Author
    def initialize(name)
        @name = name
    end
    attr_accessor :name
    def posts
        Post.all.select {|post| post.author == self}
    end
    def add_post(post)
        post.author = self
    end
    def add_post_by_title(post)
        post = Post.new(post)
        post.author = self
    end
    def self.post_count
        Post.all.length
    end
end