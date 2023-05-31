class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    first_song = songs.order(:created_at).first
    first_song.genre if first_song
  end

  def song_count
    #return the number of songs associated with the artist
    songs.count
  end

  def genre_count
    #return the number of genres associated with the artist
    genres.count
  end
end
