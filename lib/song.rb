class Song
  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@artist_count[artist] ||= 0
    @@artist_count[artist] += 1
    @@genre_count[genre] ||= 0
    @@genre_count[genre] += 1
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.artist_count
    @@artist_count
  end

  def self.genre_count
    @@genre_count
  end
end

=begin
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
pp ninety_nine_problems.name
pp ninety_nine_problems.artist
pp ninety_nine_problems.genre

pp Song.count
pp Song.artists
pp Song.genres
pp Song.artist_count
pp Song.genre_count
=end