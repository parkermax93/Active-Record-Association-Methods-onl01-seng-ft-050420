class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # drake = Artist.new(name: "Drake")
    Song.find_or_create_by(artist: 'Drake')
  end
end