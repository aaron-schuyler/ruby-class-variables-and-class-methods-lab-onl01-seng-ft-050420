class Song 
  attr_accessor :name 
  attr_reader :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @@count +=1
    if !@@genres.include?(genre)
      @@genres << genre
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
  def genre=(genre)
    @genre = genre
    @@genres << genre
  end
  def self.genre_count
    hash = {}
    self.all.each do |v|
      if hash[v.genre]
      hash[v.genre] +=1
      else
        hash[v.genre] = 1 
      end
    end
  end
end