require 'pry'
class Song 
  
  @@count = 0   

  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count +=1 
    @@genres << genre
    @@artists << artist 
  end
  
  attr_accessor :name, :artist, :genre 
  
  def self.count
    @@count
  end
  
  @@genres = []
  @@artists = []
  
  def self.genres
    @@genres
  end
  
  def self.artists 
    @@artists
  end
  
  def self.genre_count
    @@genres.each do |genre|
      hash = {}

      if hash[genre] = 1 
        hash[genre] + 1 
      else
        hash[genre] = 1 
      end
    end
    hash
  end
end