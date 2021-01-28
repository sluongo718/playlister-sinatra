class Song < ApplicationModel
  has_many :song_genres
  has_many :genres, through: :song_genres
  belongs_to :artist

  def slug
    name.split(' ').join('-')
  end

  def self.find_by_slug(slug)
    find_by_name(slug.split('-').join(' '))
  end
end
