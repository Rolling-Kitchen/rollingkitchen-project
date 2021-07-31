require "open-uri"

User.destroy_all
Foodtruck.destroy_all

puts "creating users..."
user_seed = User.new(email: 'user@email.com', password: '123456', first_name: 'Ron', last_name: "Brown", is_restaurant: false)
user_seed.save!
restaurant_seed = User.new(email: 'restaurant@email.com', password: '123456', first_name: 'Jason', last_name: "Smith", is_restaurant: true)
restaurant_seed.save!
puts "users seeded"


puts "creating trucks..."


img1 = File.open(Rails.root.join('app/assets/images/truckseed/htKU7u6MBSQ3IFq1cIiOQDuaPuKVVnNbyWKm9cx0FeFVyMwDGQ.jpg'))
truck1 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "RUBBER TRAMP",
    description: "RUBBER TRAMP has inherited the authentic taste of the famous 'I LOVE PIZZA' restaurant that has been loved for 30 years in Chiba, and sells and operates it as such. I LOVE PIZZA is an American pizza made with Italian dough. I LOVE PIZZA is an American pizza made with Italian dough. I LOVE PIZZA is an American pizza made with Italian dough. Try the taste of 30 years of tradition in the atmosphere of prove LiFE.",
    food_type: "Pizza",
    food_price: "¥ 1000- ¥ 1499",
    menu_package: "Pizzas: Italian sausage, Margherita, Gorgonzola and Honey, Proscuitto and rucola, Americana",
    location: "Chuo Ward, Chiba City, Chiba Prefecture"
  })
truck1.photo.attach(io: img1, filename: 'htKU7u6MBSQ3IFq1cIiOQDuaPuKVVnNbyWKm9cx0FeFVyMwDGQ.jpg', content_type: 'image/jpg')
  

img2 = File.open(Rails.root.join('app/assets/images/truckseed/3xp2PXTI2gqbhouctPr2QhWfIWlBbHmU9Pi2O5hypqjHMpUngy.jpg'))
truck2 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "Hey!Riccio",
    description: "Riccio's most popular menu item is the Grilled Chicken Plate. Mr. Kawana, who also oversees the menu at our sister restaurant, Beach & Cafe PROVE, takes pride in his seasoning. We are proud to offer our famous Grilled Chicken Plate with the idea of 'authentic Italian food in a casual atmosphere'! The chicken is crispy on the outside and juicy on the inside, with a generous amount of olive, caper, and tomato 'puttanesca sauce'! Don't bite, just order!",
    food_type: "Chicken",
    food_price: "¥ 2000- ¥ 2499",
    menu_package: "Burgers: Demiglace, Cheese, Grated Wasabi",
    location: "Chuo Ward, Chiba City, Chiba Prefecture"
  })
truck2.photo.attach(io: img2, filename: '3xp2PXTI2gqbhouctPr2QhWfIWlBbHmU9Pi2O5hypqjHMpUngy.jpg', content_type: 'image/jpg')
 
img3 = File.open(Rails.root.join('app/assets/images/truckseed/eKa31XeDOThzKhPfC3vvXgkh4A7J4b0DzPGswpu2lGMwpAz6bc.jpg'))
truck3 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "Even though it's fruit",
    description: "One of our recommendations is the mandarin orange sandwich, made with juicy mandarins!
    The tartness of the mandarin orange and the rich cream are a perfect match!
    Depending on the season, we also offer 'Setoka sandwich' and 'Dekopon sandwich' using Setoka. Experience Japan's beautiful four seasons and seasonal fruits with your eyes, nose, and mouth!",
    food_type: "Dessert",
    food_price: "¥ 500 - ¥ 999",
    menu_package: "Tangerine sandwiches, Grape sandwiches, Banana sandwiches",
    location: "Takasu, Misato City, Saitama Prefecture"
  })
truck3.photo.attach(io: img3, filename: 'eKa31XeDOThzKhPfC3vvXgkh4A7J4b0DzPGswpu2lGMwpAz6bc.jpg', content_type: 'image/jpg')
  

img4 = File.open(Rails.root.join('app/assets/images/truckseed/NMNJgu9csIWfCpZpH9ksAQlHLwLMyGCYa7KJEaSZmjCbf2m56G.jpg'))
truck4 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "EAGLE NEST CAFE",
    description: "asdsadasdasdasdd ",
    food_type: "Hamburger",   
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck4.photo.attach(io: img4, filename: 'NMNJgu9csIWfCpZpH9ksAQlHLwLMyGCYa7KJEaSZmjCbf2m56G.jpg', content_type: 'image/jpg')

puts "make truck 6"

img6 = File.open(Rails.root.join('app/assets/images/truckseed/dTxOPUDucjhURsHT3H6zI6vvMsrUGDP1az8wUJZKggKJ00c3fz.jpg'))
truck6 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "Fukushoya",
    description: "asdsadasdasdasdd ",
    food_type: "Cafe",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck6.photo.attach(io: img6, filename: 'dTxOPUDucjhURsHT3H6zI6vvMsrUGDP1az8wUJZKggKJ00c3fz.jpg', content_type: 'image/jpg')
  
puts "make truck 7"


img7 = File.open(Rails.root.join('app/assets/images/truckseed/D0sspaqQSrHJbCWhFJlcBX6ejrC7W3FASi4IlGFiBrc8PtIVKQ.jpg'))
truck7 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "MILK BAR",
    description: "The MILK BAR menu offers basic milk ice cream and recommended seasonal flavored ice cream. (As of April 2020). Focusing on only one product is a sign of love and confidence in that product. It comes with free toppings that are great for both taste and entertainment! The variety of toppings includes roasted pistachios with skin, strawberry flakes, caramelized almonds, etc., which can be enjoyed by both adults and children.",
    food_type: "Ice Cream",
    food_price: "¥ >500",
    menu_package: "Vanilla Ice cream, Milk shakes, Seasonal Fruit Icecream, Toppings ",
    location: "Aoba Ward, Yokohama City, Kanagawa Prefecture"
  })
truck7.photo.attach(io: img7, filename: 'D0sspaqQSrHJbCWhFJlcBX6ejrC7W3FASi4IlGFiBrc8PtIVKQ.jpg', content_type: 'image/jpg')
  
puts "make truck 8"


img8 = File.open(Rails.root.join('app/assets/images/truckseed/62Jx8QlP7hpUooo0FdUcs69IqMpXuwQv2SQmRW8N1IzMFQTmXb.jpg'))
truck8 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "SHOPPERS",
    description: "asdsadasdasdasdd ",
    food_type: "Sandwiches",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck8.photo.attach(io: img8, filename: '62Jx8QlP7hpUooo0FdUcs69IqMpXuwQv2SQmRW8N1IzMFQTmXb.jpg', content_type: 'image/jpg')
  
puts "make truck 9"


img9 = File.open(Rails.root.join('app/assets/images/truckseed/7ruoFNYyAeku0JfDti3Petlgl8ny7DKzZBep1tFtmRjK3QCSKe.jpg'))
truck9 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "KITCHEN ROOM",
    description: "asdsadasdasdasdd ",
    food_type: "Thai",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck9.photo.attach(io: img9, filename: '7ruoFNYyAeku0JfDti3Petlgl8ny7DKzZBep1tFtmRjK3QCSKe.jpg', content_type: 'image/jpg')
  


img10 = File.open(Rails.root.join('app/assets/images/truckseed/dcsE1iONBUHgiRs4nWjACi7uHMJ55bn6rQBmkY6rcRSFcLsAas.jpg'))
truck10 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "MAPS",
    description: "asdsadasdasdasdd ",
    food_type: "Pizza",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck10.photo.attach(io: img10, filename: 'dcsE1iONBUHgiRs4nWjACi7uHMJ55bn6rQBmkY6rcRSFcLsAas.jpg', content_type: 'image/jpg')
  


img11 = File.open(Rails.root.join('app/assets/images/truckseed/FrxaB5BGY2VKAdnhw4WKpdPyf1Y0YwJQyXHrWrskidMgzsM03v.jpg'))
truck11 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "La Strada",
    description: "asdsadasdasdasdd ",
    food_type: "Curry",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck11.photo.attach(io: img11, filename: 'FrxaB5BGY2VKAdnhw4WKpdPyf1Y0YwJQyXHrWrskidMgzsM03v.jpg', content_type: 'image/jpg')


img12 = File.open(Rails.root.join('app/assets/images/truckseed/HwCklZRXIwevN8yHmS9gDpguQX7Hc1wOTzUCqo90k39oB8Bd26.jpg'))
truck12 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "Vamos",
    description: "asdsadasdasdasdd ",
    food_type: "Mexican ",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck12.photo.attach(io: img12, filename: 'HwCklZRXIwevN8yHmS9gDpguQX7Hc1wOTzUCqo90k39oB8Bd26.jpg', content_type: 'image/jpg')

img13 = File.open(Rails.root.join('app/assets/images/truckseed/0elTHtoJSJjA7lBRHmyFGhQY6p3ZsogbKxrtaqzenPBSTM6dfO.jpg'))
truck13 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "FRIT BOY",
    description: "asdsadasdasdasdd ",
    food_type: "French Fries ",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck13.photo.attach(io: img13, filename: '0elTHtoJSJjA7lBRHmyFGhQY6p3ZsogbKxrtaqzenPBSTM6dfO.jpg', content_type: 'image/jpg')

img14 = File.open(Rails.root.join('app/assets/images/truckseed/LTHrONpXw7kCVuwAYdqmcFhqxwh9nmGAX29uHGu4cbn2arBDjf.jpg'))
truck14 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "La Strada",
    description: "asdsadasdasdasdd ",
    food_type: "Curry",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck14.photo.attach(io: img14, filename: 'LTHrONpXw7kCVuwAYdqmcFhqxwh9nmGAX29uHGu4cbn2arBDjf.jpg', content_type: 'image/jpg')

img15 = File.open(Rails.root.join('app/assets/images/truckseed/jIIV5LQ7Eoviad1srHgWhq6TCcdyQbE7diTOzSLEMs2UCFzi2Q.jpg'))
truck15 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "HACHIDORI COFFEE",
    description: "asdsadasdasdasdd ",
    food_type: "Cafe",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck15.photo.attach(io: img15, filename: 'jIIV5LQ7Eoviad1srHgWhq6TCcdyQbE7diTOzSLEMs2UCFzi2Q.jpg', content_type: 'image/jpg')

img16 = File.open(Rails.root.join('app/assets/images/truckseed/sCuZfRemUhfyJbTPYC6Fgmd8nVSZezoXK902T6JqecbKU12s1t.jpg'))
truck16 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "HALEAKALA",
    description: "asdsadasdasdasdd ",
    food_type: "Hawaiian",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck16.photo.attach(io: img16, filename: 'sCuZfRemUhfyJbTPYC6Fgmd8nVSZezoXK902T6JqecbKU12s1t.jpg', content_type: 'image/jpg')


img17 = File.open(Rails.root.join('app/assets/images/truckseed/TSH9RjczTQzh6nRbL8raKvbsBYeb6jFSSzAgWRMqlZVV0CRYNG.jpg'))
truck17 = Foodtruck.create!(
  {
    user: restaurant_seed,
    name: "Keihan",
    description: "asdsadasdasdasdd ",
    food_type: "Grilled Meats",
    food_price: "¥ 500",
    menu_package: "asdsadasdasdasdd ",
    location: "asdsadasdasdasdd "
  })
truck17.photo.attach(io: img17, filename: 'TSH9RjczTQzh6nRbL8raKvbsBYeb6jFSSzAgWRMqlZVV0CRYNG.jpg', content_type: 'image/jpg')
puts "seeds created!"
