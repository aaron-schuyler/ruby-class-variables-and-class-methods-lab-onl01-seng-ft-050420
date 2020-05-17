class Song 
  attr_accessor :name, :genre
  attr_reader :artist
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, genre, artist)
    @@count +=1
    if !@@genres.include?(genre)
      @@genres << genres
    end
    if !@@artists.include?(artist)
      @@artists << artist
    end
    @name = name
    @artist = artist
    @genre = genre
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists
  end
  def artist=(artist)
    @artist = artist
    @@artists << artist
  end
  def self.genre_count(genre)
    @@
end