class Genre < ApplicationModel
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def slug
    name.split(' ').join('-')
  end

  def self.find_by_slug(slug)
    find_by_name(slug.split('-').join(' '))
  end
end
