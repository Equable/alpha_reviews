require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  context "successfully writes a value to the restaurant table" do 

  	restaurant = FactoryBot.create(:restaurant)
  	it "should have a Restaurant class" do 
  		expect(restaurant.save).to eq(true)
  	end
  end


	context "restaurant name is unique" do
		restaurant = {	
			name: "Papa John's", 
			street: '77 Summer St', 
			city: 'Boston', 
			state: 'MA', 
			zip: '02112'
		}
		Restaurant.create(restaurant)
		restaurant2 = Restaurant.new(restaurant)
		it "should not save duplicate restaurant" do 
			expect(restaurant2.save).to eq(false)
		end

		it "should save if name and street combo is unique" do
			
			restaurant[:street] = '02222'
			restaurant3 = Restaurant.new(restaurant)
			expect(restaurant3.save).to eq(true)
		end
	end


  context "restaurant has validations that" do 
		restaurant = FactoryBot.create(:restaurant)
		restaurant.name = nil
		it "should not store value if name is not specified" do 
			expect(restaurant.save).to eq(false)
		end

		restaurant.name = 'hello'
		restaurant.street = nil
		it "should not store value if street is not specified" do 
			expect(restaurant.save).to eq(false)
		end		

		restaurant.street = 'hello'
		restaurant.city = nil
		it "should not store value if city is not specified" do 
			expect(restaurant.save).to eq(false)
		end

		restaurant.city = 'hello'
		restaurant.state = nil
		it "should not store value if state is not specified" do 
			expect(restaurant.save).to eq(false)
		end

		restaurant.city = 'hello'
		restaurant.zip = nil
		it "should not store value if zip is not specified" do 
			expect(restaurant.save).to eq(false)
		end
	end
end
