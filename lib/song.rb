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
    array = []
    @@artists.each do |artist|
    if array.include?(artist) == false 
      array << artist
    end
  end
  end
  
  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash[genre] 
        hash[genre] += 1 
      else
        hash[genre] = 1 
      end
    end
    hash 
  end


 def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if hash[artist] 
        hash[artist] += 1 
      else
        hash[artist] = 1 
      end
    end
    hash 
  end
end