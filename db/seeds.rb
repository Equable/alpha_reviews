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
	{ name: "Uno Due Go", street: '52 Summer Street.', city: 'Boston', state: 'MA', zip: '02110', description: 'Branch of a small casual chain offering pizza, baked goods, soups, salads & sandwiches.', image: 'uno-due-go.jpg', avg_rating: 5, avg_cost: '$'},
	{ name: "Falafel King", street: '62 Summer Street', city: 'Boston', state: 'MA', zip: '02110', description: 'Falafel King offers meals of excellent quality and invites you to try its delicious food.', image: 'falafel-king.jpg', avg_rating: 5, avg_cost: '$'},
	{ name: "5 Guys", street: '58 Summer Street', city: 'Boston', state: 'MA', zip: '02110', description: 'Fresh ingredients delivered daily and hand-prepared. Five Guys Knows Fries. Made-To-Order Burgers.', image: 'five-guys.jpg', avg_rating: 5, avg_cost: '$$'},
	{ name: "Al Capone's", street: '82 Summer Street', city: 'Boston', state: 'MA', zip: '02110', description: 'With years in the business, Alcapone is proud to be one of the best restaurants in town. Our professional staff guarantee to deliver the most delicious dishes together with the quality services for the customers.', image: 'al-capones.jpg', avg_rating: 5, avg_cost: '$'},
	{ name: "Oath Pizza", street: '700 Atlantic Ave', city: 'Boston', state: 'MA', zip: '02110', description: 'Certified Humane - Sustainable Ingredients | Oath Pizza.', image: 'oath-pizza.jpg', avg_rating: 5, avg_cost: '$'},
	{ name: "Bonapita", street: '49 Franklin Street', city: 'Boston', state: 'MA', zip: '02110', description: 'Modern counter serve with Mediterranean mains & housemade pitas, plus vegan & vegetarian options.', image: 'bonapita.jpg', avg_rating: 5, avg_cost: '$'},
	{ name: "Boston News Cafe", street: '80 Arch Street', city: 'Boston', state: 'MA', zip: '02110', description: 'Straightforward cafe offering coffee, bagels, sandwiches & salads to go, plus catering services.', image: 'boston-news-cafe.jpg', avg_rating: 5, avg_cost: '$'},
	{ name: "Viga", street: '291 Devonshire Street', city: 'Boston', state: 'MA', zip: '02110', description: 'We are committed to providing you with the best quality food and service in a relaxed & friendly atmosphere.', image: 'viga.jpg', avg_rating: 5, avg_cost: '$'},
	{ name: "B. Good", street: '84 Summer Street', city: 'Boston', state: 'MA', zip: '02110', description: 'Burgers, salads and bowls inspired by the seasons and ingredients rotated with the local harvests.', image: 'bgood.jpg', avg_rating: 5, avg_cost: '$'},
	{ name: "B. Good", street: '84 Summer Street', city: 'Boston', state: 'MA', zip: '02110', description: 'Burgers, salads and bowls inspired by the seasons and ingredients rotated with the local harvests.', image: 'bgood.jpg', avg_rating: 5, avg_cost: '$'},
  { name: "Archie’s New York Deli", street: "101 Arch St", city: "Boston", state: "MA", zip: "02110", description: "Daytime deli serving bagels, breakfast items, salads & sandwiches, including Reubens & house combos.", image: "archies-deli.jpg", avg_rating: 5, avg_cost: "$"},
  { name: "Chacarero", street: "101 Arch St", city: "Boston", state: "MA", zip: "02110", description: "Popular spot (especially for lunch) for homemade Chilean sandwiches served at the counter.", image: "chacarero.jpg", avg_rating: 5, avg_cost: "$"},
  { name: "163 Vietnamese Sandwiches & Bubble Tea", street: "66 Harrison Ave", city: "Boston", state: "MA", zip: "02110", description: "Miniature shop specializing in Vietnamese-style sandwiches & prepackaged meals for carryout.", image: "163-vietnamese.jpg", avg_rating: 5, avg_cost: "$"},
  { name: "Wai Wai", street: "26 Oxford St", city: "Boston", state: "MA", zip: "02110", description: "Modest Chinese nook with a menu emphasizing roasted meats & ice cream in flavors such as ginger.", image: "wai-wai.jpg", avg_rating: 5, avg_cost: "$"},
  { name: "Chicken and Rice Guys", street: "280 Washington St", city: "Boston", state: "MA", zip: "02110", description: "When we opened our first food truck back in 2012, we had one goal: introduce you nomivores to the ridiculously delicious world of chicken and rice. With high quality ingredients, alluring aromas, and the seduction of self-saucing, we knew our halal grub would be a hit.", image: "chicken-and-rice-guys.jpg", avg_rating: 5, avg_cost: "$"},
  { name: "Pho Pasteur", street: "682 Washington St", city: "Boston", state: "MA", zip: "02110", description: "Quick-serve spot for oversized bowls of Vietnamese noodle soup & traditional entrees.", image: "pho-pasteur.jpg", avg_rating: 5, avg_cost: "$"},
  { name: "Tora", street: "20B Tyler St", city: "Boston", state: "MA", zip: "02110", description: "Poke bowls and kaisen don (sashimi and rice bowls) are emphasized at this intimate Japanese eatery.", image: "tora.jpg", avg_rating: 5, avg_cost: "$"},
  { name: "The Halal Guys", street: "137 Stuart St", city: "Boston", state: "MA", zip: "02110", description: "From humble beginnings as a New York City hot dog cart to a world-renowned international restaurant chain, The Halal Guys story is the quintessential American Dream. The Halal Guys is defining a new, thriving segment for the restaurant industry: American Halal Food!", image: "halal-guys.jpg", avg_rating: 5, avg_cost: "$"},
  { name: "Sam Lagrassas", street: "44 Province St", city: "Boston", state: "MA", zip: "02110", description: "Longtime family-run shop acclaimed for specialty sandwiches & only open for lunch on weekdays.", image: "sam-lagrassas.jpg", avg_rating: 5, avg_cost: "$"},
  { name: "Deli 1", street: "85 Arch St", city: "Boston", state: "MA", zip: "02110", description: "Deli food from along ago.", image: "deli-1.jpg", avg_rating: 5, avg_cost: "$"}
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
