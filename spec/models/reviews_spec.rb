require 'rails_helper'

RSpec.describe Review, type: :model do
    context "Reviews table should exist" do
        let!(:review1) { FactoryBot.create(:review) }
        let!(:review2) { FactoryBot.build(:review) }
        it "should be able to save a new instance of review" do
            expect(review1.save).to eq(true)
            expect(Review.first).to eq(review1)
        end
        it "should fail if there is no user" do
            review2.user = nil
            expect(review2.save).to eq(false)
            binding.pry
        end
    end
end