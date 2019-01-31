class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant
    has_many :votes

    validates :rating, presence: true, numericality: { only_integer: true }, inclusion: 1..100
end