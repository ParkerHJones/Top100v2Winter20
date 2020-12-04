class Billboard < ApplicationRecord
    has_many :songs
    has_many :artist, through: :songs
end
