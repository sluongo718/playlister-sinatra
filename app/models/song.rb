class Song < ActiveRecord::Base
    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genres

    def slug 
        first = self.name.downcase.split(" ")
         first.join("-")

    end

    def self.find_by_slug(slug)
       
         first = slug.split("-").join(" ").titlecase
         
         self.find_by(name: first)
       

    end
end