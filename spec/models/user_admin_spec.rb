require 'rails_helper'

RSpec.describe User, type: :model do
  context "created user have admin attributes" do
    it "user.admin is true when the user is an admin" do
      user1 = User.create(email: "abc@gmail.com", password: "password", admin: true)
      expect(user1.admin).to eq(true)
    end
    it "user.admin is false when the user is not an admin" do
      user2 = User.create(email: "abc@gmail.com", password: "password", admin: false)
      expect(user2.admin).to eq(false)
    end
  end
end
