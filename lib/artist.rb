require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self.name
  end
  def self.all
    @@all
  end
  def add_song(song_obect)
    new_song, new_song.artist= song_obect, self
  end
  def songs
    # binding.pry
    Song.all.find_all{|song|song.artist == self}
  end
  def self.find_or_create_by_name(artist_name)
    #  binding.pry
    if Song.all.any? { |e| e.artist == artist_name }
      # binding.pry
      Song.all.find_all{|song|song.artist == artist_name}
    else
      self.new(artist_name)
      # binding.pry
    end
  end
  def print_songs
    Song.all.find_all{|song|song.artist == self}.each { |e| puts e.name }
  end
  def name=(artist_name)
    @name = artist_name
  end
end
