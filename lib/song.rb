class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    new_song = Song.new(file[1])
    new_artist = Artist.new(file[0])
    new_song.artist = new_artist
    new_song
  end
  def artist_name=(artist_name)
    if Artist.all.any? { |artist| artist.name == artist_name }
      @@all.detect {|artist| artist.name == artist_name}
      # binding.pry
      # Song.all.find_all{|song|song.artist == artist_name}
    else
        self.artist = Artist.new(artist_name)
        self.artist


      binding.pry
    end
    # binding.pry

  end

end
