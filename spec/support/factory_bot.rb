require 'factory_bot'

FactoryBot.define do

  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
    avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/avatar.jpeg'), 'image/jpeg') }
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

end
