class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs, through: :song_genres
    has_many :artists, through: :songs

    def slug 
        first = self.name.downcase.split(" ")
         first.join("-")

    end

    def self.find_by_slug(slug)
       
         first = slug.split("-").join(" ").titlecase
         
         self.find_by(name: first)
       

    end
end