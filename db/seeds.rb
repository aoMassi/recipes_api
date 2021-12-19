# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

puts "Cleaning database"

User.destroy_all
Recipe.destroy_all
Comment.destroy_all

url =  [
  "https://res.cloudinary.com/dmkuoxijq/image/upload/v1639941617/Recipes/photo-1626266800035-0f65355cb33a_syt53d.jpg",
  "https://res.cloudinary.com/dmkuoxijq/image/upload/v1639941562/Recipes/photo-1629723448738-03475a1e536d_moyawp.jpg",
  "https://res.cloudinary.com/dmkuoxijq/image/upload/v1639941538/Recipes/photo-1630316639103-ff40ddc7912f_pahvaw.jpg",
  "https://res.cloudinary.com/dmkuoxijq/image/upload/v1639941488/Recipes/photo-1631255444914-69f8b115b096_wqldm0.jpg",
  "https://res.cloudinary.com/dmkuoxijq/image/upload/v1639941445/Recipes/photo-1631788012442-633d4f91ad31_inaytg.jpg",
  "https://res.cloudinary.com/dmkuoxijq/image/upload/v1639941416/Recipes/photo-1632229095740-8c75082087c5_cgftbr.jpg",
  "https://res.cloudinary.com/dmkuoxijq/image/upload/v1639941385/Recipes/photo-1632370360608-6d7f2a012dc7_dp0lxw.jpg",
  "https://res.cloudinary.com/dmkuoxijq/image/upload/v1639941350/Recipes/photo-1636983754415-947b2dd76701_fnm2zt.jpg",
  "https://res.cloudinary.com/dmkuoxijq/image/upload/v1639941323/Recipes/photo-1633785587171-577b501d8dcb_yrrbup.jpg",
  "https://res.cloudinary.com/dmkuoxijq/image/upload/v1639941227/Recipes/photo-1636450513541-87f5ae337ddc_t37jef.jpg"
]






puts "Creating user"

user1 = User.create!(
  email: "user1@user.com",
  password: "password",
  
)

user2 = User.create!(
  email: "user2@user.com",
  password: "password",

)

puts "Creating Recipe"

recipe1 = Recipe.create!(
  user: user1,
  name: "Healthy Holiday Recipes for a Crowd",
  description: "The holiday season is a time for enjoying classic, comforting holiday dishes, ones we look forward to all year long. However, most of those holiday dishes aren't that good for you. Luckily, it's easy to add a creative twist to those classic recipes and turn traditional holiday comfort foods into healthy holiday recipes.

  If you're struggling to find healthy holiday recipes to impress a crowd without skimping on the holiday's greatest comfort foods and flavors, don't fret. These recipes range from appetizers and main dishes to sides and desserts, so you've got all the bases covered. Plus, there's nothing better than a dish that's both delicious and healthy, right?"
  
)

recipe2 = Recipe.create!(
  user: user1,
  name: "Spinach Pomegranate Salad",
  description: "A very quick and nutritious salad made with pomegranate seeds and feta cheese."
  
)

recipe3 = Recipe.create!(
  user: user1,
  name: "Easy Brussels Sprouts Salad",
  description: "This Brussels sprouts salad recipe will convince anyone that they are super yummy."
  
)

recipe4 = Recipe.create!(
  user: user1,
  name: "Perfect Pumpkin Pie",
  description: "The one and only! EAGLE BRAND® makes this traditional dessert the perfect ending to a Thanksgiving feast."
)

recipe5 = Recipe.create!(
  user: user1,
  name: "Good Old Fashioned Pancakes",
  description: "This is a great recipe that I found in my Grandma's recipe book. Judging from the weathered look of this recipe card, this was a family favorite."
)

recipe6 = Recipe.create!(
  user: user1,
  name: "Best Green Bean Casserole",
  description: "This great variation of the traditional green bean casserole is topped with French fried onions and Cheddar cheese.  "
)

recipe7 = Recipe.create!(
  user: user1,
  name: Faker::Food.dish,
  description: Faker::Food.description
  
)


recipe8 = Recipe.create!(
  user: user1,
  name: Faker::Food.dish,
  description: Faker::Food.description
  
)


recipe9 = Recipe.create!(
  user: user1,
  name: Faker::Food.dish,
  description: Faker::Food.description
  
)


recipe10 = Recipe.create!(
  user: user1,
  name: Faker::Food.dish,
  description: Faker::Food.description
  
)


Recipe.all.each do |recipe|
    photo = URI.open(url.pop)
    recipe.photos.attach(io: photo, filename: 'recipe.png', content_type: 'image/png')
  end

puts "Creating comment"

recipe = Comment.create!(
  recipe: recipe1,
  content: Faker::Lorem.paragraph(sentence_count: 5)
  

)

comment2 = Comment.create!(
  recipe: recipe3,
  content: Faker::Lorem.paragraph(sentence_count: 5)

  
)

comment3 = Comment.create!(
  recipe: recipe1,
  content: Faker::Lorem.paragraph(sentence_count: 5)



)

comment4 = Comment.create!(
  recipe: recipe9,
  content: Faker::Lorem.paragraph(sentence_count: 5)

  

)

comment5 = Comment.create!(
  recipe: recipe4,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)

comment6 = Comment.create!(
  recipe: recipe2,
  content: Faker::Lorem.paragraph(sentence_count: 5)

)

comment7 = Comment.create!(
  recipe: recipe9,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)

comment8 = Comment.create!(
  recipe: recipe4,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)

comment9 = Comment.create!(
  recipe: recipe2,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)


comment10 = Comment.create!(
  recipe: recipe4,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)

comment11 = Comment.create!(
  recipe: recipe1,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)

comment12 = Comment.create!(
  recipe: recipe2,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)

comment13 = Comment.create!(
  recipe: recipe9,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)


comment14 = Comment.create!(
  recipe: recipe10,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)


comment15 = Comment.create!(
  recipe: recipe3,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)


comment16 = Comment.create!(
  recipe: recipe2,
  content: Faker::Lorem.paragraph(sentence_count: 5)


)