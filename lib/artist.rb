class Artist
  attr_accessor :name
  @@all = []
  #
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
<<<<<<< HEAD
    new_song = Song.new(name, self, genre)
    self.songs << new_song
    new_song
=======
    self.songs << Song.new(name, self, genre)
>>>>>>> fd806ff7f85be0acd7149b203accb149096b9f18
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect {|song| song.genre}
  end
end
