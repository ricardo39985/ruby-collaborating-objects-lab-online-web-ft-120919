class MP3Importer
  # binding.pry
  def initialize(direct)

    @files = Dir.entries(direct).find_all { |e|  e.length > 4}.flatten
    direct

    # binding.pry

  end
  def files
    @files
  end
  def path

  end
  def import
    @files.map { |file|Song.new_by_filename(file.split(" - ")[1])  }

  end
end
