require 'factory_bot'

FactoryBot.define do

  factory :user do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
    avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/avatar.png'), 'image/png') }
  end

  factory :restaurant do
  	name {Faker::Bank.name}
  	street {Faker::Address.street_address}
  	city {Faker::Address.city}
  	state {Faker::Address.state_abbr}
  	zip {Faker::Address.zip_code}
  end

  factory :category do
  	name {Faker::Beer.style}
  end

  factory :review do
    rating { rand(1...100) }
    user { FactoryBot.create(:user) }
    restaurant { FactoryBot.create(:restaurant) }
    comment { "blah blah blah" }
  end
end
