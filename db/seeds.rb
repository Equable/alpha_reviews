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
	{ name: "Papa John's", street: '77 Summer St', city: 'Boston', state: 'MA', zip: '02112', description: 'Trash food for your face!', image: '', avg_rating: 1, avg_cost: '$'},
	{ name: "Falafel King", street: '98 Summer St', city: 'Boston', state: 'MA', zip: '02112', description: 'Delicious', image: '', avg_rating: 4, avg_cost: '$$'},
	{ name: "Wendy's", street: '75 Summer St', city: 'Boston', state: 'MA', zip: '02112', description: 'Simply the best', image: '', avg_rating: 5, avg_cost: '$$'}
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

