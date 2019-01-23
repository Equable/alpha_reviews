require 'rails_helper'

RSpec.describe Category, type: :model do
  context "successfully creates a value in the category table" do 

  	category = FactoryBot.create(:category)
  	it "should write a value to the category table" do 
  		expect(category.save).to eq(true)
		end
	end

	context "category model has validations" do
		category1 = Category.new(name: 'hello')
		category2 = Category.new(name: 'hello')
		category3 = Category.new(name: 'goodbye')

		it "should not store a duplicate name in the category table" do
			expect(category1.save).to eq(true)
			expect(category2.save).to eq(false)
		end

		it "should store a unique name" do
			expect(category3.save).to eq(true)
		end
	end

end
