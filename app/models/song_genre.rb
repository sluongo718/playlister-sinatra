class SongGenre < ApplicationModel
  belongs_to :song
  belongs_to :genre
end
