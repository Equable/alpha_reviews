class Restaurant < ApplicationRecord
	has_many :categorizations
	has_many :categories, through: :categorizations
	has_many :reviews

	validates :name, presence: true, uniqueness: { scope: :street }
	validates :street, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zip, presence: true
end