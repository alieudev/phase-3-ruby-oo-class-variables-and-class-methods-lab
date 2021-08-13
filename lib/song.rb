class Song
    attr_accessor :name, :artist, :genre
    @@count
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count = 3
        @@artists << self.artist
        @@genres << self.genre
    end 

    def self.count
        @@count
    end 

    def self.artists
        @@artists.uniq
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist] 
                artist_count[artist] += 1 
            else 
                artist_count[artist] = 1
            end
        end
        artist_count
    end 

    def self.genre_count
        genres = {}
        @@genres.each do |genre|
            if genres[genre] 
                genres[genre] += 1 
            else 
                genres[genre] = 1
            end
        end
        genres
    end 
    
end 
