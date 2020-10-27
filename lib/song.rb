class Song
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name, :genre, :artist
    def self.all
        @@all
    end
    def artist_name
        self.artist ? self.artist.name : nil
    end
end


