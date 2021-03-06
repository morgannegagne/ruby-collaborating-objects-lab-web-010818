require "pry"
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parse = filename.split(" - ")
    name = parse[1]
    artist = parse[0]
    song =  self.new(name)
    song.artist_name=(artist)
    song
  end

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

end
#Pry.start
