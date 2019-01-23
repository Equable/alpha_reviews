# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

  categories = 
  [
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


  categories.each do |x|
  	Category.create(x)
  end



restaurants = [
	{ 
	name: "Papa John's", 
	street: '77 Summer St', 
	city: 'Boston', 
	state: 'MA', 
	zip: '02112', 
	description: 'Trash food for your face!', 
	image: '', 
	avg_rating: 1,
	avg_cost: '$'
	 },

	{ 
	name: "Falafel King", 
	street: '98 Summer St', 
	city: 'Boston', 
	state: 'MA', 
	zip: '02112', 
	description: 'Delicious', 
	image: '', 
	avg_rating: 4,
	avg_cost: '$$'
	 },

	 	{ 
	name: "Wendy's", 
	street: '75 Summer St', 
	city: 'Boston', 
	state: 'MA', 
	zip: '02112', 
	description: 'Simply the best', 
	image: '', 
	avg_rating: 5,
	avg_cost: '$$'
	 },

	]

	 restaurants.each do |x|
	 	Restaurant.create(x)
	 end

  # Character.create(name: 'Luke', movie: movies.first)
