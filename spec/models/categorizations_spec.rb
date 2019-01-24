require 'rails_helper'

RSpec.describe Categorization, type: :model do
  context "successfully saves values" do 
  	let!(:category) { FactoryBot.create(:category) }
  	let!(:restaurant) { FactoryBot.create(:restaurant) }
  	let!(:categorization) { Categorization.create(restaurant: restaurant, category: category ) }
  	
  	it "should write a value to the category table" do 
  		expect(categorization.save).to eq(true)
		end

	  it "should belong to a restaurant" do 
  		expect(categorization.restaurant).to eq(restaurant)
		end

	  it "should belong to a category" do 
  		expect(categorization.category).to eq(category)
		end		

	  it "category should have many restaurants through categoriations" do
  		expect(Category.find(category.id).restaurants.first).to eq(restaurant)
		end		

		it "restaurant should have many categories through categorizations" do
			expect(Restaurant.find(restaurant.id).categories.first).to eq(category)
		end
	end

end
