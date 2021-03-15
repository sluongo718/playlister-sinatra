class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

    def slug 
        first = self.name.downcase.split(" ")
         first.join("-")

    end

    def self.find_by_slug(slug)
         first = slug.split("-")
         first.join(" ").titlecase
        
        binding.pry

    end

end