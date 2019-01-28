require 'rails_helper'

RSpec.describe Api::V1::ReviewsController, type: :controller do
  describe "POST#create" do

    login_user

    it "should have a current_user" do
    # note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
      expect(subject.current_user).to_not eq(nil)
    end

    it "creates a new review" do
      review = {rating: 4, comment: "string of joes", restaurant_id: 1 }.to_json

      prev_count = Review.count
      post(:create, body: review)
      expect(Review.count).to eq(prev_count + 1)
    end
  end
end
