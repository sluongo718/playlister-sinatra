class Artist < ApplicationModel
  has_many :songs
  has_many :genres, through: :songs

  def slug
    name.split(' ').join('-')
  end

  def self.find_by_slug(slug)
    find_by_name(slug.split('-').join(' '))
  end
end
