class Artist
  attr_accessor :name,:songs

  @@song_count = 0

  def initialize(name=nil)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @songs << new_song
    @@song_count += 1
  end
  
  def self.song_count
    @@song_count
  end

end
