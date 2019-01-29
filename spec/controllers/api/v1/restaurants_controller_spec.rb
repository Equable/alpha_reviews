require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :controller do
  let!(:review1) { FactoryBot.create(:review)}
  describe "GET#show" do
    it "should return a JSON with restaurant data" do
      get :show, params: { id: review1.restaurant_id }
      returned_json = JSON.parse(response.body)
      restaurant_data = review1.restaurant
      restaurant = returned_json["restaurant"]

      expect(response.status).to eq(200)
      expect(response.content_type).to eq("application/json")

      expect(restaurant["name"]).to eq(restaurant_data.name)
      expect(restaurant["street"]).to eq(restaurant_data.street)
      expect(restaurant["city"]).to eq(restaurant_data.city)
      expect(restaurant["state"]).to eq(restaurant_data.state)
      expect(restaurant["zip"]).to eq(restaurant_data.zip)
    end

    it "should return a JSON with restaurant reviews" do
      get :show, params: { id: review1.restaurant_id }
      returned_json = JSON.parse(response.body)
      reviews = returned_json["restaurant"]["reviews"][0]

      expect(reviews["rating"].to_i).to eq(review1.rating)
      expect(reviews["comment"]).to eq(review1.comment)
      expect(reviews["user_id"]).to eq(review1.user_id)
    end
  end
end
