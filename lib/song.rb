class Song 
  attr_accessor :name 
  attr_reader :artist, :genre
  @@songs = []
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @@count +=1
    @@songs << self
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
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
  def artist=(artist)
    @artist = artist
    @@artists << artist
  end
  def genre=(genre)
    @genre = genre
    @@genres << genre
  end
  def self.genre_count
    hash = {}
    @@songs.each do |v|
      if hash[v.genre]
      hash[v.genre] +=1
      else
        hash[v.genre] = 1 
      end
    end
  end
end