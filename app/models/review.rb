class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant

    validates :rating, presence: true, numericality: { only_integer: true }, inclusion: 1..100
end