require 'rails_helper'

RSpec.describe Review, type: :model do
    it { should validate_presence_of(:rating) }
    it { should validate_inclusion_of(:rating).in(1..100)}
end