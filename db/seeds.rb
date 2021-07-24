require "open-uri"

User.destroy_all
Foodtruck.destroy_all

puts "creating seeds..."

fries_image = File.open(Rails.root.join('app/assets/images/fries.png'))
burrito_image = File.open(Rails.root.join('app/assets/images/burrito.png'))
coffee_image = File.open(Rails.root.join('app/assets/images/coffee.png'))
indonesian_image = File.open(Rails.root.join('app/assets/images/indonesian.png'))
barbecue_image = File.open(Rails.root.join('app/assets/images/barbecue.png'))

user_seed = User.new(email: 'email@email.com', password: '123456', first_name: 'Ron', last_name: "Brown")
user_seed.save!

nice_fries = Foodtruck.create!(
  {
    user: user_seed,
    name: "Nice Fries",
    description: "We would like to come along with our oldschool 1991 Mercedes to your party (business/private), 
    event or festival to fry our delicious fresh fries golden brown. Burgundian snacks and various sandwiches 
    are also among the possibilities. In addition, our range is complemented by various beverages such as soft drinks, 
    coffee, tea and hot chocolate.",
    food_type: "Fastfood",
    menu_package: "The following various products are prepared at our Foodtruck: Bag of fresh fries, 
    Fresh fries pulled pork/chicken salad, Burgundy croquette, Fricadelle, Bitter starter.",
    location: "492-1260 Takada, Aizumisato-machi Onuma-gun, Fukushima, Japan"
  })
  nice_fries.photo.attach(io: fries_image, filename: 'nice_fries.png', content_type: 'image/png')
  
  
kripik = Foodtruck.create!(
  { 
    user: user_seed,
    name: "Kripik",
    description: "Kripik serves delicious Indonesian food and snacks from a cozy baking moped!
The perfect food truck for any occasion with a diverse selection.

All our dishes are freshly prepared by hand from our own kitchen. Really authentic and deliciously responsible!
Our Gado Gado can be prepared both vegetarian and with chicken. To finish your meal, you should definitely try the fried banana with or without powdered sugar.

Booking = enjoying!",
    food_type: "Asian",
    menu_package: "Kripik serves: Soto soup, Chicken satay with peanut sauce, Vegetarian spring rolls, Chicken spring rolls, Gado Gado, Fried banana",
    location: "216-1034, Nishishichijo Minaminishinocho, Shimogyo-ku-shi, Kyoto, Japan",
  })
  kripik.photo.attach(io: indonesian_image, filename: 'kripik.png', content_type: 'image/png')

build_burrito = Foodtruck.create!(
  { 
    user: user_seed,
    name: "Build a Burrito",
    description: "Build a Burrito serves Cali-Tex-Mexican street food live from our colorful food trucks.
    Our dishes consist only of fresh ingredients, ingredients that are cut, seasoned and fried on the spot.",
    food_type: "Mexican",
    menu_package: "We serve the following items: Burrito, Burrito-bowl, Nachos, Tacos, Chili-cheese fries",
    location: "8-8, Roppongi 3-chome, Minato-ku, Tokyo, Japan",
  })
  build_burrito.photo.attach(io: burrito_image, filename: 'burrito.png', content_type: 'image/png')

bagels_beans = Foodtruck.create!(
  { 
    user: user_seed,
    name: "Bagels & Beans",
    description: "What does everyone (yes really, everyone) do first when they arrive at an event? Exactly: go in search for the coffee. 
    More than 90% of the population starts their day with a cup of coffee. A good coffee bar therefore has an irresistible appeal. 
    And we have some nice bagels too. Who doesn't love bagels?",
    food_type: "Sandwich",
    menu_package: "Coffee: Americano, Espresso, Cappuccino, Latte Macchiato, Flat White, Bagels: Salmon Creamcheese, Carpaccio, BLT, Tomato & Egg",
    location: "461-1168, Harumi Ofuisutawax(11-kai), Chuo-ku, Tokyo, Japan",
  })
  bagels_beans.photo.attach(io: coffee_image, filename: 'bagels_beans.png', content_type: 'image/png')

lx_barbecue = Foodtruck.create!(
  { 
    user: user_seed,
    name: "LX Barbecue",
    description: "At LX BBQ we prepare all dishes on our smokers and black bastards. The preparation of the most delicious dishes in an authentic way as it should be. 
    Fresh meat, seasoned and rubbed with our own spices and marinades, prepared at your location.",
    food_type: "Barbecue",
    menu_package: "Burgers, spareribs, hotwings, pulled pork, pulled chicken, pulled beef and smokey pinchos",
    location: "197-1250, Oyoshi, Koshigaya-shi, Saitama, Japan",
  })
  lx_barbecue.photo.attach(io: barbecue_image, filename: 'lx_barbecue.png', content_type: 'image/png')

puts "seeds created!"
