class MP3Importer
  # binding.pry
  def initialize(path)

    @files = Dir.entries(path).find_all { |e|  e.length > 4}.flatten
    # binding.pry
    return @files
  end
  def files
    @files
  end
  def import
    @files.map { |file|Song.new_by_filename(file.split(" - ")[1])  }

  end
end
