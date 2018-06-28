class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    self.songs.count
  end

  def genre_count
    genres = []
    self.songs.each do |s|
      genres << s.genre
    end
    binding.pry
    genre.uniq.length
  end

end # Artist
