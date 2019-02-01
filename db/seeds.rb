users = [
  { email: "Joe@gmail.com", password: "password", admin: true },
  { email: "Louis@gmail.com", password: "password", admin: true },
  { email: "Gil@gmail.com", password: "password", admin: true },
  { email: "Tony@gmail.com", password: "password", admin: true },
  { email: "AmyLynn@gmail.com", password: "password", admin: false },
  { email: "Admin@gmail.com", password: "password", admin: true },
  { email: "Brianna@gmail.com", password: "password", admin: false },
  { email: "Nick@gmail.com", password: "password", admin: false },
  { email: "Casi@gmail.com", password: "password", admin: false },
  { email: "Admin@alphareviews.com", password: "password", admin: true },
]

users.each do |user|
  User.create!(user)
end

img = File.open(File.join(Rails.root, '/app/assets/images/Joe.jpeg'))
User.find(1).update(avatar: img)
img2 = File.open(File.join(Rails.root, '/app/assets/images/Louis.jpeg'))
User.find(2).update(avatar: img2)
img3 = File.open(File.join(Rails.root, '/app/assets/images/Gil.jpeg'))
User.find(3).update(avatar: img3)
img4 = File.open(File.join(Rails.root, '/app/assets/images/Tony.jpeg'))
User.find(4).update(avatar: img4)
img5 = File.open(File.join(Rails.root, '/app/assets/images/Unicorn.png'))
User.find(8).update(avatar: img5)
img6 = File.open(File.join(Rails.root, '/app/assets/images/Admin.png'))
User.find(6).update(avatar: img6)


categories = [
    { name: "American" },
    { name: "Bakeries" },
    { name: "Breakfast & Brunch" },
    { name: "Burgers" },
    { name: "Cafes" },
    { name: "Chinese" },
    { name: "Coffee & Tea" },
    { name: "Delis" },
    { name: "Falafel" },
    { name: "Fast Food" },
    { name: "Food Trucks" },
    { name: "Halal" },
    { name: "Italian" },
    { name: "Japanese" },
    { name: "Latin American" },
    { name: "Mediterranean" },
    { name: "Middle Eastern" },
    { name: "Pizza" },
    { name: "Poke" },
    { name: "Salad" },
    { name: "Sandwiches" },
    { name: "Sushi Bars" },
    { name: "Vietnamese" }
]

categories.each do |category|
	Category.create!(category)
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
	Restaurant.create!(restaurant)
end

categorizations = [
	{restaurant: Restaurant.find(1), category: Category.find(16)},
	{restaurant: Restaurant.find(1), category: Category.find(20)},
	{restaurant: Restaurant.find(1), category: Category.find(18)},
	{restaurant: Restaurant.find(2), category: Category.find(17)},
	{restaurant: Restaurant.find(2), category: Category.find(9)},
	{restaurant: Restaurant.find(3), category: Category.find(4)},
	{restaurant: Restaurant.find(3), category: Category.find(10)},
	{restaurant: Restaurant.find(4), category: Category.find(18)},
	{restaurant: Restaurant.find(4), category: Category.find(21)},
	{restaurant: Restaurant.find(4), category: Category.find(13)},
	{restaurant: Restaurant.find(5), category: Category.find(18)},
	{restaurant: Restaurant.find(5), category: Category.find(20)},
	{restaurant: Restaurant.find(6), category: Category.find(16)},
	{restaurant: Restaurant.find(6), category: Category.find(2)},
	{restaurant: Restaurant.find(7), category: Category.find(5)},
	{restaurant: Restaurant.find(7), category: Category.find(3)},
	{restaurant: Restaurant.find(8), category: Category.find(13)},
	{restaurant: Restaurant.find(9), category: Category.find(1)},
	{restaurant: Restaurant.find(9), category: Category.find(4)},
	{restaurant: Restaurant.find(9), category: Category.find(21)},
	{restaurant: Restaurant.find(10), category: Category.find(8)},
	{restaurant: Restaurant.find(10), category: Category.find(3)},
	{restaurant: Restaurant.find(10), category: Category.find(21)},
	{restaurant: Restaurant.find(11), category: Category.find(21)},
	{restaurant: Restaurant.find(11), category: Category.find(15)},
	{restaurant: Restaurant.find(12), category: Category.find(23)},
	{restaurant: Restaurant.find(12), category: Category.find(7)},
	{restaurant: Restaurant.find(12), category: Category.find(8)},
	{restaurant: Restaurant.find(13), category: Category.find(6)},
	{restaurant: Restaurant.find(14), category: Category.find(12)},
	{restaurant: Restaurant.find(14), category: Category.find(16)},
	{restaurant: Restaurant.find(14), category: Category.find(10)},
	{restaurant: Restaurant.find(15), category: Category.find(23)},
	{restaurant: Restaurant.find(16), category: Category.find(14)},
	{restaurant: Restaurant.find(16), category: Category.find(22)},
	{restaurant: Restaurant.find(16), category: Category.find(19)},
	{restaurant: Restaurant.find(17), category: Category.find(17)},
	{restaurant: Restaurant.find(17), category: Category.find(12)},
	{restaurant: Restaurant.find(18), category: Category.find(8)},
	{restaurant: Restaurant.find(18), category: Category.find(21)},
	{restaurant: Restaurant.find(19), category: Category.find(8)}
]

categorizations.each do |categorization|
	Categorization.create!(categorization)
end

reviews = [

  { rating: 40, user_id: 1, restaurant_id: 1, comment: "How do you get a bunch of worker bees to opt for a cold salad lunch in the dead of winter?  Offer up a $6 Build Your Own Salad every Monday in January Regularly priced $7.99. Protein fees apply. deal to your cardholders! It definitely worked its magic over the salad lunch line, as well as the cashier line by the time I got to it. I liked that they offered a few cooked veggie options, such as the broccoli, grilled white onion, and roasted brussel sprouts, as well as tri-colored carrot coins, a 3 grain blend, and gogi mix (not that I tried the last one, yet.  Their croutons are rather large, but quite flavorful.  They nixed romaine lettuce as a salad base due to the current outbreak in the news.  And the young black gentleman at the register was a pleasure to work with. Note to self: opt for the crunchies on the side, not chopped into the salad." },
  { rating: 100, user_id: 2, restaurant_id: 1, comment: "World's BEST Grilled Cheese (V) $6.99 - 12-month aged Cheddar, Cheddar cheese curds, roasted tomato jam I gave Uno Due Go's self proclaimed World's Best grilled cheese a chance.  Its time in the heat took longer than the two sandwiches ordered after me.  It then sweated through the wrapping on the counter as I paid, leaving a damp shadow in its wake.
  Still, after I unwrapped it while in the UDG dining area and started on the first half, there was a nice consistent toasted crisp chew to the bread, but it rather light on the jam and definitely not the best grilled cheese I ever had.  The second half softened as it sat on the table waiting for its turn to be consumed; perhaps I should have set it on its side to help it to retain its crispness? I could have had my choice of a build your own sandwich, with a protein!, for the same $6.99, and might have enjoyed it all the better. Note: 5-7pm 1/2 off bakery goods" },
  { rating: 80, user_id: 3, restaurant_id: 1, comment: "I ordered a breakfast sandwich wrap and the first bite wasn't good as it was all bread but once I got into the actual items in the wrap, I was surprised that it was very flavorful. I went and grabbed salt and pepper to season the wrap but it didn't need any which doesn't happen often at establishments. It was very clean in here, nice seating area and I like that you can grab your own coffee.   Very clean bathrooms which you need a code to get in.  Keeps you safe!  I would go here again when I'm in the area." },
  { rating: 20, user_id: 4, restaurant_id: 2, comment: "Decided to pop in and get some food ten minutes before closing time. There were two ladies behind the counter, and one politely informed me that I could only get my food to go as they were closing for the evening. No problem at all since I had come for takeout anyway. I ordered a kafta kabob platter and the lady who served me made sure I left thoroughly eatisfied, by throwing in an additional box of falafel (7 pieces!!!) and hummus for free. My order cost all of $10.85. I brought the food home and promptly devoured it -- no complaints whatsoever, it was still hot and fresh. Everything in the platter was delicious - the kafta kabobs were flavorful, the rice was nicely spiced, and the cucumber and tomato salad was surprisingly delicious (I may have enjoyed that the most out of everything). As for the side of falafel and hummus - the falafel were crisp on the outside and went really well with the creamy hummus. Kudos to Falafel King for affordable and tasty food, with great service! So glad this place is just a stone's throw from my place." },
  { rating: 60, user_id: 5, restaurant_id: 2, comment: "This is one of my go-to places for lunch. Love the falafels. They are so fresh and tastes amazing. Fan of the free falafel they hand out when they prepare our orders. The service is fast and efficient. Would keep going to this place till am around in Boston." },
  { rating: 80, user_id: 6, restaurant_id: 2, comment: "Quick and easy lunch in a small restaurant. They move the queue through here quite quickly and most of them are takeaway. There is seating inside for maybe 25 or so.
  Simple enough for Middle Eastern food. Grilled chicken or beef shawarma, falafel and sides. I chose the veggie sampler platter and was handed a fresh falafel to nibble on while I went through the line. Everyone got one, which is a nice feature.
  Unwrapping my styrofoam box, we have a salad base in a light dressing, tabouli, hummus, baba ganoush and all of it drizzled with a light sauce. Very tasty, very filling and very high in carbs. It was naptime at around 3:00 pm. lol
  High satisfaction meal, it stayed with me all day and I chose a light dinner late in the evening." },
  { rating: 100, user_id: 7, restaurant_id: 3, comment: "Service was good. The guy at the register with dreadlocks was very helpful and provided very good service. My first visit and the burger and fries were good. To be honest, it was better than shake shack.  I had the bacon cheddar with jalapeños.  The fries were fresh and delicious. Looking forward to having another burger" },
  { rating: 20, user_id: 8, restaurant_id: 3, comment: "I ordered through UBEREAT at 9:21PM a little bit before closing time & they basically rushed my order. Forgetting to add toppings to my cheese burger and the fries were horrible overall my order was a mess , my cheese burger cAme plain also were dry and overcooked, my Cajun fries were not edible at all. Overly seasoned as if they threw the fries on top of the burgers and dumped the salt into the bag and top it off some more with the half filled cups of fries. It was way too excessive that I had to sift the fries. I barely ate my food and with this oncoming headache from too much salt. I feel like I'm dying from high blood This was my second time ordering and I'm all set with this Downtown location " },
  { rating: 80, user_id: 9, restaurant_id: 3, comment: "No problems here. This is a quick review. The service was great. Fast and efficient. I ordered a Cheeseburger (which in 5 Guys world is a DOUBLE cheeseburger---keep that in mind) with ketchup, Mayo, mushrooms and jalapeños. Regular sized soft drink, but no fries this time. The fries are good, but sometimes I do without because the burgers are big enough. This location is always clean and fairly organized. Well done!" },
  { rating: 80, user_id: 9, restaurant_id: 4, comment: "I've been in love with Al Capones since I was a kid. It's on my Top 25 in the city for quantity. The Quality is traditional blue collar so don't look for any flair. Just look for some good food. The home of the 20 inch sub is still fav's on my book. Al&Rose. Loved ya since my first bite on Broad Street back in 92'" },
  { rating: 100, user_id: 8, restaurant_id: 4, comment: "Walked in for lunch and ordered a Chicken Cesar salad, the gentleman at the counter points to the fridge behind me and tells me to pick out a salad and they'll throw chicken right in.... after that I automatically sensed that I will not be enjoying my lunch today.
  HMMM...okay whatever. I took any salad since they were all the same (romaine lettuce, few slices of red bell pepper, onion and jalapeno) I walked over to the other gentleman down the counter and he cut up a  small piece of chicken breast and threw it in. I go to register and they charge me almost $11 for the blandest salad ever. I could've gone to any other place and got something much fancier and tastier for the price- highly disappointed. Oh and if you stay in here for longer than 5 minutes, forget it you'll smell like an old grease pan for the rest of the day. However, their pizzas do LOOK delish, will have to try soon." },
  { rating: 60, user_id: 7, restaurant_id: 4, comment: "Visiting from California all the food in Boston has been pleasant, but this place really hit the spot and the service was so friendly I felt at home. My sister and I had a steak and cheese sub and it was the most satisfying meal we've had since we've been here. I would love to come back here every time I visit Boston." },
  { rating: 80, user_id: 6, restaurant_id: 5, comment: "Eating plant based while traveling is often an exercise in frustration, taking in the sights and smells of comforting foods you can't control while scrolling down the menu looking for something more filling than a salad. I explored the Oath menu more ought of a voyeuristic desire to vicariously enjoy the artisan pizza of others and to my thin crusted delight, they had a build-your-own selfie pizza with vegan cheese options! We built ours with mushrooms, spinach, scallions, marinara sauce and basil, and to our surprise, it was the best vegan pizza we ever had. The thin crust, which I don't usually prefer, has a crispy exterior but soft interior. The cheese was stringy and full of flavor and the fresh toppings blended together symphonically. The staff was friendly and genuinely cared about our dining experience. We made quick work of the first one so we ordered another. It was so good on our return trip today we got a couple more pizzas. Still amazing! I look forward to visiting the Oath locations in NYC." },
  { rating: 40, user_id: 5, restaurant_id: 5, comment: "Crust was crispy and buttery; more pastry like than the usual chewy pizza dough. Toppings were laughable with that few (5) cubes of tiny pineapple and non existence cheese. Given that it was NYE and there was this one lone soul feeding everyone, we finished the pizzas without complains. Reading the past reviews, I hoped that was a one off incident. Perhaps I will try the pizza again if I'm travelling on the commuter." },
  { rating: 80, user_id: 4, restaurant_id: 5, comment: "The pizza here is sooo good! I haven't had one I didn't like so far. And I'm in love with eating the muffled trushroom. The crust is unique and it's thin and crispy, exactly how I like it!  I can't wait to try the other craft pizzas." },
  { rating: 100, user_id: 3, restaurant_id: 6, comment: " Damn, Bonapita has elevated my lunch to a whole new level! Came here not knowing anything about it, but have got to say, it's amazing! The meatballs are deliciously warm and soft and I don't know what they put in their zingy dressing but it is absolutely delicious. Who knew salad could taste so good? There's a reason this place is busy, it's because it's great! Highly recommended!" },
  { rating: 80, user_id: 2, restaurant_id: 6, comment: "I work in the area and used to come in for lunch fairly frequently (about once per week), but haven't been as much recently. Bonapita used to be my favorite lunch spot. The food and value were both worth 5/5 stars.
  Unfortunately the portion sizes have gone down quite significantly recently. First the pitas served with the rice plates started shrinking, and now the portions themselves are getting ridiculously small. While the bowls they serve the food in are still the same, the amount of food has gone down quite significantly. At first it was not enough for me to stop going, although the frequency at which I did went down with the portion sizes. After my most recent visit today however I'm sad to admit that the value (amount of food for the price) has gone down to the point where it's no longer worth going. For me personally, one bowl is no longer enough food. The pita they serve is too small to even use all the hummus, whereas previously it used to be the other way around. And for a total cost of nearly $12 it's not worth it with all the other higher-value options in the area." },
  { rating: 100, user_id: 1, restaurant_id: 6, comment: "Quick lunch here at Bonapita today. They don't have a huge menu but that is what gets things moving along. A few choices for bases (salad, plate, pita sandwich) and a few choices for proteins (marinated chicken, beef meatballs, black bean & beet patties, mushrooms) topped and ready to go. I chose the chicken with a fill it and added spicy hummus. The sandwich was very good. Great flavors and textures with crunchy veggies and a sauce, nicely filled with a good serving of spicy chicken. The hummus in a small pot added nothing and I'd probably skip this next time. A good lunch and not expensive at all." },
  { rating: 20, user_id: 1, restaurant_id: 7, comment: "Short and sweet- I am pregnant and my husband brought home a chicken salad wrap for me one day.. and now it is ALL I WANT. If it weren't totally weird, I would go get one every single day. Very good!!" },
  { rating: 60, user_id: 2, restaurant_id: 7, comment: "I've never tried their food, but I come here every now and then to grab a drink or a snack. Everything is usually in stock, the staff are okay  but I like the cute brown lady at the register the most. This is a convenient store which is near my job, so I'll return here...FYI the granola that comes with the parfait is pretty gross, so do avoid that lol." },
  { rating: 60, user_id: 3, restaurant_id: 7, comment: "I walked by here a couple times and today I decided I should give it a try since I did not bring lunch to work My first impression was how clean the place is. The place is spacious ( there's no seats indoors to eat). The sell breakfast, sandwiches & wraps. They also have snacks like chips, fruits, candy etc. I ordered a Tuna Melt sandwich without the bacon and it was really really good! They toasted the sandwich which made the sandwich that much better. The ladies there are very kind, easy to deal with. Very quick service no lines at the time I went (2pm) I will definitely be returning whenever I don't bring lunch to work or whenever i'm in the mood for a good sandwich." },
  { rating: 80, user_id: 4, restaurant_id: 8, comment: "Viga catered a pop-up at the IDB today, and I just wanted to say that the Farmer's Market Sesame Noodle Bowl with Garlic Chips (plus flank steak) was the tastiest lunch I've had here in quite a while.
  Nice job -- hope you setup here again in the future." },
  { rating: 40, user_id: 5, restaurant_id: 8, comment: "I really like their clam chowder." },
  { rating: 60, user_id: 6, restaurant_id: 8, comment: "Really enjoyed my MealPal lunch I ordered here today! I was in and out in under a minute and my meal was already packed in a bag with utensils ready to go. The oven roasted chicken bowl had quinoa in it which definitely made the meal more substantial. It also came with bread on the side which, despite being just straight up bread, was quite yummy and filling. The bowl itself had many different toppings like cranberries and butternut squash. The chicken portion was substantial but the chicken was a little dry - I guess that's to be expected with white chicken meat. Will be ordering from here again! - UPDATE #1: the pollo verdura bowl on MealPal was VERY carb-heavy with mostly pasta and some toppings and sauce on top. Not a fan of this one." },
  { rating: 40, user_id: 7, restaurant_id: 9, comment: "This is the kind of place that makes me feel healthy just stepping inside. The first thing you see is a row of fresh mint growing in the center of the store. We split a southwest salad which included my favorite salad ingredients-avocado, chicken and corn. To balance out the salad, we got a green chile burger which was stuffed with bacon. The chile was pretty spicy and I found myself reaching for the mocha shake frequently to quell the spice. The burger was greasy and delicious, but hey I had a salad so the calories balance out right? Even the mocha shake tasted healthy. It didn't taste sweet at all so you don't get a crazy sugar crash after. The fries were disappointing though. We got them for free as part of the mobile app deal. The regular fries were a little burnt and the sweet potato fries were soggy. Will definitely come back for the salads and burgers but will skip the fries." },
  { rating: 40, user_id: 8, restaurant_id: 9, comment: "I love B Good! This particular location has disappointingly poor service though. Today I ordered 2 burgers and sat down to wait for my food. After ten minutes I looked up and realized there was not a single person behind the counter. I got up and had to ask the employees sitting in the corner why no one was cooking my food. Only then did a cook come out from the back and start on the orders. Edited: The employee did apologize for the wait and give us complimentary sweet potato fries. The food was very hot and delicious. I just wish the service was more consistent at this location. Totally hit or miss." },
  { rating: 100, user_id: 9, restaurant_id: 9, comment: "This is a local chain fast food restaurant (apologies for the potential misuse of terminology). I am not sure what I was expecting but I was thoroughly impressed. A long line didn't translate to a long wait which is crucial during lunch hours AND the food was so fresh. I gave this place four stars as my Power Bowl was INCREDIBLY salty. I probably wouldn't order it again but would love to try something new. Highly recommend if you want a break from Clover" },
  { rating: 80, user_id: 9, restaurant_id: 10, comment: "All your hungover breakfast dreams come true with the Yahoo. It's a heavenly breakfast sandwich with your choice of meat (go bacon of course) AND they threw a hash brown on there. Love the guys yelling out the orders behind the counter. Feels like a true New York deli right in the heart of Boston. So good it almost makes me like New York...almost." },
  { rating: 20, user_id: 8, restaurant_id: 10, comment: "Archie's has the best Italian sandwiches period. I travel from SoCal to Boston for their sandwiches. I wish I could get them out here. The service is outstanding and Michael always takes great care of me and my son who is going to college out there. Can't wait to go back." },
  { rating: 60, user_id: 7, restaurant_id: 10, comment: "Had Archie's for the first time today, went with the Italian, I have to say it was perfectly balanced and under $8/how can you beat it!! Absolutely delicious!! The service was fast and super friendly!! I am going to say that I bet almost every item on the menu is just as good and if not better!! I will be back for sure, maybe breakfast tomorrow :) Enjoy!!" },
  { rating: 80, user_id: 6, restaurant_id: 11, comment: "A solid lunch place downtown. Spicy Chilean sandwiches are packed with flavor. They don't have a lot of options here, but they do their sandwiches really well. I recommend getting a large combo sandwich with everything on it. I would not recommend their sweet potato fries. The fries are spinning in a reheated glass thing and get quite soggy. Most people claim the sandwich is too spicy, but I would try it at least once. It's pretty weird to eat a sandwich with green beans in it, but I guess it works?!" },
  { rating: 100, user_id: 5, restaurant_id: 11, comment: "A few other side items but the big sellers are the sandwiches. Order and at the register, then work your way through the rope lines where the sandwiches are prepared in order. Easy. Bruce says, go with the original in chicken or beef (I chose beef) and all the way which includes a spicy sauce, Muenster cheese, tomatoes, avocado spread and, yes, steamed green beans. Trust me, theyre delicious. Coolers with drinks are available and a very few tables for dining in." },
  { rating: 40, user_id: 4, restaurant_id: 11, comment: "Traditional Combo Extra Spicy is the way to go. Can't complain. Quick service during lunchtime and staff is always recepting to requests" },
  { rating: 60, user_id: 3, restaurant_id: 12, comment: "Lovely hole in the wall found and recommended by my friend who lives in Boston. They are a no frills, affordable, quick and delicious Bahn Mi restaurant. They're simple in what they offer but they do it well. You also can't beat the $4.25 price. Great find!" },
  { rating: 80, user_id: 2, restaurant_id: 12, comment: "For the price, I think the food is good. For $4-5, you can get a Vietnamese sandwich or a meal (noodles, meat, and a spring roll), which is a really good deal. The sandwiches are made to order, and the meals are already made and just laid out in boxes. Sometimes they're still warm, but most of the time it's room temperature. It's fast because you can just pick it up and pay, but it would probably taste better warm. On weekdays, I see a lot of office workers ordering/picking up like 5-10 meals to bring back, so it's a pretty popular/busy lunch spot. After all, it is a good deal, fast, and convenient.
  The food isn't completely authentic Vietnamese food, but it's pretty tasty. The store is run by Chinese people (probably a family). It's small and old inside; not many places to sit. There are 2 tables leaned against the wall, but it's pretty awkward sitting and eating there. Most people buy the food and leave. It's also cash only, but there are banks/atm's nearby." },
  { rating: 100, user_id: 1, restaurant_id: 12, comment: "Good Bahn Mi for a great price! The service is non-existent, but they get you the sandwich fast. The sandwich doesn't have too much meat, but the veges are fresh and the bread was fluffy, and hot when I got it. The one issue is that they put the entire cilantro stalk in it, which was a bit unpleasant. Otherwise, the flavor profile was great, especially considering the price point!" },
  { rating: 60, user_id: 1, restaurant_id: 13, comment: "Wai Wai is definitely the definition of a hole in the wall but it doesn't bother me since I come for the food. I prefer and recommend dining in then doing take out since it always taste better enjoying it right away versus having to reheat it later. I usually get the rice plate with boneless chicken and roast pork belly that comes with the steamed greens but what brings it all together is the soy sauce and scallion oil. So simple but so satisfying. It's so basic but I find myself craving for it all the time. Also, don't expect much from the service either, like I said I just come for the food. Lol." },
  { rating: 40, user_id: 2, restaurant_id: 13, comment: "This is a hole in the wall type of place. As soon as you go inside, you'll see the roasted meats hanging in the glass cabinet in their kitchen. The place is very small, probably less than ten tables available. Menu is short and simple, you choose how many types of meat you want with your meal. I do feel like I'm in Hong Kong or Singapore whenever I eat here. It tastes so authentic and the same as what you can get if you're in Asia. I would consider this one of my comfort foods. Would definitely recommend this place." },
  { rating: 80, user_id: 3, restaurant_id: 13, comment: " Been here since I was in high school and it never failed to meet my expectations . Every visit here is like the first time . The chicken with rice and veggies along with chicken soup that comes with the dish is always superb. I keep coming back for their chicken I think they put crack in their chicken cause you will definitely need a fix at least once a week coming in to this side street of Chinatown. People might think this place should be reported to the city inspectional services since it look so run down inside . I don't know why they never update and renovate the place with all the money they are making . Prices are affordable and reasonable here . They have ducks , spareribs , gizzards, chicken heart, thousand years eggs which you can tell them what you like . Cash only here so bring cash only" },
  { rating: 40, user_id: 4, restaurant_id: 14, comment: "Chicken and Rice Guys is perfectly simple and simply perfect. They only have a few choices, so their operation is really streamlined and their food is really consistent. It's the perfect style of food to supply lots of workers in the Downtown Crossing area. The chicken and rice are both always perfectly seasoned, and you can can customize your meal with sauces. The white garlic sauce is lighter than you would expect and really tasty. The mint/cilantro sauce is refreshing. It's best when you combine sauces and basically put everything on your chicken and rice together. The portion size is great, too. The service is really efficient and your food is usually out within a couple of minutes, even at the busiest times. It's my go-to when I'm looking for a quick lunch in the area. Also, try the baklava! It's gooey and rich and decadent." },
  { rating: 20, user_id: 5, restaurant_id: 14, comment: "So simple, but so good. I've eaten here a couple times and at their food truck way more times. While their food truck rice can be too dry, getting here means it always comes out perfectly. The portions are good for a cheap price, and the food comes out really quickly. Can't go wrong with Chicken and Rice Guys! Make sure you add their amazing white garlic sauce!" },
  { rating: 80, user_id: 6, restaurant_id: 14, comment: "If you want a cheap, fast, and delicious option that isn't like McDonald's or Chipotle, then Chicken and Rice Guys is where you should go! This restaurant an ode to Halal Guys in New York, and they do a good job. I usually go for lamb & beef gyro rice plate, add a bunch of creamy white sauce, and bam! I'm happy. I haven't tried any of their other sauces because I'm such a stickler for the OG sauce." },
  { rating: 100, user_id: 7, restaurant_id: 15, comment: "Becca and Brendan: Went to our usual pho place down the street from Pho Pasteur on a chilly winter night only to find it had closed! Luckily, we were seated right away at Pho Pasteur. We got the spring rolls and 2 large Pho Tai Nams. Everything came out right away and you get complimentary hot tea while you wait. The spring rolls were standard (they're hard to mess up). The pho came out quickly and was piping hot. There was a good amount of meat and noodles and meat was tender and had good cuts. Overall, a delicious bowl of pho on a cold day. The menu is pretty large and offers many selections that looked delicious. As one user below said, don't expect THE BEST service at this place--which is how it should be. All in all, the food was delicious and relatively cheap. We will definitely be back again!" },
  { rating: 20, user_id: 8, restaurant_id: 15, comment: "It's busy. It's crowded. It's noisy. It's the best bowl of pho you'll get in Boston. Don't expect good service. You come here for the amazing food and the authenticity. People are yelling and rushing all around. It's exactly what it should be." },
  { rating: 60, user_id: 9, restaurant_id: 15, comment: "I have only had their pho - it is one of my go to pho places. It is always busy here no matter if you come during lunch or dinner - so always allow some extra time for waiting for a table and even after you are seated, there will be some wait for service; but that is what you usually can expect from a place that knows how to cook amazing food (pho - in this case). The portion is generous even if you're not getting the XL size soup and the broth is delicious and the amount of meat they throw in there is definitely more than enough and the price you just can't beat - under $10 and you will be so full you are practically rolling out of that place. This is one of my fave places in Chinatown - I might need to start expanding to other items on their menu...." },
  { rating: 60, user_id: 9, restaurant_id: 16, comment: "Beautiful presentation of food! Pretty good but not as much as it looks and also a little pricey. Overall not a bad experience and would recommend others to try once, but I personally would probably not come again. Not that anything was horrible, but just that it wasn't anything amazing." },
  { rating: 80, user_id: 8, restaurant_id: 16, comment: "Underground Japanese fare in the heart of Chinatown. Good: many options of Poke bowls to pick from, even more other donburi, protein over rice bowl, options for more of a substantial, dinner option. Fish was fresh, flavorful. Average: interior was nice, service was standard, prices were a bit on the higher end of what I expected but nothing unreasonable. Sauces can be a bit on the sweet/overextracted side. Bad: food took quite a while to come out. Surprisingly, since there weren't too many people there for our late lunch. Overall, a great spot for a healthy lunch/dinner in a sea of fried Chinese options!" },
  { rating: 40, user_id: 7, restaurant_id: 16, comment: "SAKE AISURU DON. It is actually incredible. It is a bowl with three different types of salmon (salmon sashimi, salmon toro sashimi, and minced, marinated salmon). Each of the three has a uniquely delicious taste. The salmon sashimi is wonderfully fresh, tender, and tastes great. The salmon toro sashimi (salmon belly) is even more rich, and the fat adds an extra layer of buttery taste to that salmon meat. The minced salmon is marinated in sesame oil, and tastes amazing. The minced form of the salmon gives you a different texture to change it up and add more variety to what you're chewing, and the sesame oil adds more personality to the salmon flavor without overpowering it. Each type of salmon complements the others and they contribute to a very special bowl of sake don. The restaurant feels very COZY and has a warm, homey vibe to it. Service was great, and prices are on the higher end, but reasonable for the amount and quality of raw fish you're getting ($17)." },
  { rating: 60, user_id: 6, restaurant_id: 17, comment: "My friend and I were starving really late one night and saw that there was Halal Guys for delivery. We ordered a crap ton of food and finished all of it against our better judgments. It was good, although I would say in general all the cuts of meat were pretty dry overall. But especially with that nondescript white sauce that came in these cheap looking plastic packets just drizzled all over everything, it was a pretty great meal. Highly recommend!" },
  { rating: 40, user_id: 5, restaurant_id: 17, comment: "This has the makings of a decent place, good flavor and consistency on the tahini, great pita bread. However, my main meal was ruined.  I put on the order ALLERGY WARNING CHICK PEAS/HUMMUS in all caps for the chicken gyro sandwich, and they put hummus on there.  It was a delivery order too so while got money back from doordash, it was the main part of the meal. Edit to owner:  if you are blaming door dash for your employees putting something I have an allergy to despite putting it in all caps in description, perhaps you should look into how you receive orders from them.  Plus my receipt had the description so nice try." },
  { rating: 40, user_id: 4, restaurant_id: 17, comment: "Not sure what the hype is about. I mean, it's good, but it didn't live up to my expectations based on what I'd heard about the NY food truck. My husband and I mainly come here because it's conveniently across the street from our apartment. Luckily, we've never run into a line, and service is always pretty fast. We typically split a regular size platter with either gyro or combo (chicken & gyro) meat. Everything tastes fine, but I think you can get better Halal food here in Boston." },
  { rating: 100, user_id: 3, restaurant_id: 18, comment: "If you are one of the lucky few that have found this place and ate here., then you have found one of the Greatest Deli Sandwich places in The world. The employees go out of their way to get you what you want, for example, extra deli pickles that are simply delicious. The hot pastrami with Swiss and sauerkraut on pumpernickel pressed bread, is like you went to heaven. This this place is the best on earth, hard to find, a diamond in the rough. Should I say anymore?" },
  { rating: 80, user_id: 2, restaurant_id: 18, comment: "If you are one of the lucky few that have found this place and ate here., then you have found one of the Greatest Deli Sandwich places in The world. The employees go out of their way to get you what you want, for example, extra deli pickles that are simple delicious. The hot pastrami with Swiss and sauerkraut on pumpernickel pressed bread, is like you went to heaven. This this place is the best on earth, hard to find, a diamond in the rough need I say anymore?" },
  { rating: 20, user_id: 1, restaurant_id: 18, comment: "I admit, I don't go to Sam La Grassa's all that often. But when I do go, I go for three words: Chipotle. Pastrami. Sandwich. (Ergo, I visit sparingly so I can avoid three other words: Echo. Cardio. Gram.) Let's talk about the tender, melt-in-your-mouth, perfectly flavored pastrami. Or the kicky, crisp coleslaw. Or the tangy honey mustard. Or the fresh Swiss that melts perfectly when they press the delicious sesame roll containing this perfect creation. Throw in a side of their golden steak cut fries, and you have the makings of a last meal on Earth meal. Sure, the sandwich will run you $15 and the fries another $5, and your life expectancy will have probably gone down six months by the last bite. But you know what? It's worth every cent " },
  { rating: 60, user_id: 9, restaurant_id: 19, comment: "Walk in and the staff did not see too happy to jave another customer. Very serious ppl. Ordered a steak tip lunch and they gave me 5 small peices of overcooked steak. They probably thought the big salad they added to the bowl would make up for the different. It didn't. Way to expensive for how much steak I ate. I wish i had gone somewhere else because im still hungry. The food was not bad tasting however...just not enough main course. Too much filler. Don't gyp ur customers." },
  { rating: 80, user_id: 5, restaurant_id: 19, comment: "Love them! Men working there are super funny and make great foodie. I work in the area and we enjoy going there for breakfast. My friends say they like their pancakes, and I like my bacon, egg and cheese on a roll which is yummy. Their home fries could be a bit crispier... Cash only! The lady at the cash register is so sweet. :)" },
  { rating: 100, user_id: 4, restaurant_id: 19, comment: "I used to have lunch here once a month while working in downtown crossing at Filene's. Got their spinach pie or a sandwich the cook knew my name after a while he gave me a discount on my lunch. The cashier Denise was very friendly always greeted me a with a big hello and smile when I walked in the door miss u Denise." },
]

reviews.each do |review|
	Review.create!(review)
end

votes = [
  { user_id: 1, review_id: 54, status: true },
  { user_id: 2, review_id: 53, status: false },
  { user_id: 3, review_id: 52, status: true },
  { user_id: 4, review_id: 51, status: false },
  { user_id: 5, review_id: 50, status: false },
  { user_id: 6, review_id: 49, status: true },
  { user_id: 7, review_id: 48, status: true },
  { user_id: 8, review_id: 47, status: true },
  { user_id: 9, review_id: 46, status: false },
  { user_id: 1, review_id: 45, status: false },
  { user_id: 2, review_id: 44, status: true },
  { user_id: 3, review_id: 43, status: false },
  { user_id: 4, review_id: 42, status: true },
  { user_id: 5, review_id: 41, status: true },
  { user_id: 6, review_id: 40, status: false },
  { user_id: 7, review_id: 39, status: false },
  { user_id: 8, review_id: 38, status: true },
  { user_id: 9, review_id: 37, status: false },
  { user_id: 1, review_id: 36, status: false },
  { user_id: 2, review_id: 35, status: true },
  { user_id: 3, review_id: 34, status: false },
  { user_id: 4, review_id: 33, status: true },
  { user_id: 5, review_id: 32, status: false },
  { user_id: 6, review_id: 31, status: true },
  { user_id: 7, review_id: 30, status: false },
  { user_id: 8, review_id: 29, status: false },
  { user_id: 9, review_id: 28, status: true },
  { user_id: 1, review_id: 27, status: false },
  { user_id: 2, review_id: 26, status: false },
  { user_id: 3, review_id: 25, status: true },
  { user_id: 4, review_id: 24, status: false },
  { user_id: 5, review_id: 23, status: false },
  { user_id: 6, review_id: 22, status: false },
  { user_id: 7, review_id: 21, status: true },
  { user_id: 8, review_id: 20, status: false },
  { user_id: 9, review_id: 19, status: true },
  { user_id: 1, review_id: 18, status: false },
  { user_id: 2, review_id: 17, status: true },
  { user_id: 3, review_id: 16, status: false },
  { user_id: 4, review_id: 15, status: true },
  { user_id: 5, review_id: 14, status: false },
  { user_id: 6, review_id: 13, status: true },
  { user_id: 7, review_id: 12, status: false },
  { user_id: 8, review_id: 11, status: false },
  { user_id: 9, review_id: 10, status: true },
  { user_id: 1, review_id: 9, status: false },
  { user_id: 2, review_id: 8, status: false },
  { user_id: 3, review_id: 7, status: true },
  { user_id: 4, review_id: 6, status: false },
  { user_id: 5, review_id: 5, status: false },
  { user_id: 6, review_id: 4, status: false },
  { user_id: 7, review_id: 3, status: true },
  { user_id: 8, review_id: 2, status: false },
  { user_id: 9, review_id: 1, status: true }
]

votes.each do |vote|
  Vote.create!(vote)
end
