class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.size
  end

  def artist_count
    # return the number of artists associated with the genre
    self.songs.map{|each_song| each_song.artist}.size
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.songs.map{|each_song| each_song.artist.name}
  end
end
