class Song 
  attr_accessor :name, :genre
  attr_reader :artist
  @@count = 0
  @@artists = []
  def initialize
    @@count +=1
  end
  def artist=(artist)
    @artist = artist
    @@artists << artist
  end
end