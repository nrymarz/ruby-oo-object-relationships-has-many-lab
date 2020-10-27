class Artist
    def initialize(name)
        @name = name
    end
    attr_accessor :name
    def add_song(song)
        song.artist = self
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def add_song_by_name(song)
        song = Song.new(song)
        song.artist = self
    end
    def self.song_count
        Song.all.length
    end
end