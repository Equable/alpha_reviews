class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant

    validates :user_id, presence: true
    validates :restaurant_id, presence: true
    validates :rating, presence: true, numericality: ({ only_integer: true, greater_than: 0, less_than: 101 })
end