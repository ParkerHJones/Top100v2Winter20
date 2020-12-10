class Song < ApplicationRecord
  belongs_to :billboard
  belongs_to :artist

  def full_song
    "#{self.title}"
 end 
end
