class Post
    @@all = []
    def initialize(name)
        @title = name
        @@all << self
    end
    attr_accessor :title, :author
    def self.all
        @@all
    end
    def author_name
        self.author ? self.author.name : nil
    end
end