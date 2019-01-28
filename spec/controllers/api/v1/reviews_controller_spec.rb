require 'rails_helper'

RSpec.describe Api::V1::ReviewsController, type: :controller do
  describe "POST#create" do
    let!(:rest1) { FactoryBot.create(:restaurant)}
    login_user

    it "should have a current_user" do
    # note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
      expect(subject.current_user).to_not eq(nil)
    end

    it "creates a new review" do
      review = {review: {rating: 4, comment: "string of joes", restaurant_id: rest1.id }}

      prev_count = Review.count
      
      post(:create, params: review)
      expect(Review.count).to eq(prev_count + 1)
    end
  end
end
