
categories = [
  	{ name: 'Italian' },
  	{ name: 'Southwestern' },
  	{ name: 'Sushi' },
  	{ name: 'Burgers' },
  	{ name: 'Pizza' },
  	{ name: 'Wings' },
  	{ name: 'Indian' },
  	{ name: 'Tapas' },
  	{ name: 'Dim Sum' },
  	{ name: 'Fast Food' },
  	{ name: 'Food Truck' },
  	{ name: 'American' },
  	{ name: 'French' },
  	{ name: 'Pho' },
  	{ name: 'Mediterranean' },
  	{ name: 'Subs' }
]

categories.each do |category|
	Category.create(category)
end



restaurants = [
	{ name: "Papa John's", street: '77 Summer St', city: 'Boston', state: 'MA', zip: '02112', description: 'Cool pizza place!', image: '', avg_rating: 1, avg_cost: '$'},
	{ name: "Falafel King", street: '98 Summer St', city: 'Boston', state: 'MA', zip: '02112', description: 'Delicious, right next door!', image: '', avg_rating: 4, avg_cost: '$$'},
	{ name: "Wendy's", street: '75 Summer St', city: 'Boston', state: 'MA', zip: '02112', description: 'Simply the best and cheapest.', image: '', avg_rating: 5, avg_cost: '$$'}
]

restaurants.each do |restaurant|
	Restaurant.create(restaurant)
end

categorizations = [
	{restaurant: Restaurant.first, category: Category.fifth}
]

categorizations.each do |categorization|
	Categorization.create(categorization)
end

reviews = [
	{ rating: 60, user_id: 1, restaurant_id: 1, comment: "it was mediocre at best" },
	{ rating: 80, user_id: 1, restaurant_id: 2, comment: "twas a delight"},
  { rating: 80, user_id: 1, restaurant_id: 1, comment: "it was pretty good I thought."}
]

reviews.each do |review|
	Review.create(review)
end

users = [
  { email: "user@test.com", password: "password", admin: false },
  { email: "admin@test.com", password: "password", admin: true }
]

users.each do |user|
  User.create(user)
end
