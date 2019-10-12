# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(id: 03, first_name: "Bud", last_name: "Abbot", email: "bud@mail.com")
User.create(id: 04, first_name: "Shanda", last_name: "Poyner", email: "shanda@mail.com")

Ingredient.create(id: 1, name: "bananas", expiration: "%12 %01 %2019", user_id: 1)
Ingredient.create(id: 2, name: "cherries", expiration: "%12 %02 %2019", user_id: 1)
Ingredient.create(id: 3, name: "flour", expiration: "%03 %22 %2020",  user_id: 1)
Ingredient.create(id: 4, name: "cream cheese", expiration: "%11 %28 %2019", user_id: 2)
Ingredient.create(id: 5, name: "plain yogurt", expiration: "%12 % 1 %2019", user_id: 2)
Ingredient.create(id: 6, name: "penne", expiration: "%01 %29 %2020", 
 user_id: 2)
Ingredient.create(id: 7, name: "canned corn", expiration: "%01 %10 %2020", user_id: 2)