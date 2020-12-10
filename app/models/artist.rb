class Artist < ApplicationRecord
    has_many :songs


    def self.order_rank
        order(:rank)
    end 
end
