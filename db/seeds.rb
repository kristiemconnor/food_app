# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Bud", last_name: "Abbot", email: "bud@mail.com")
User.create(first_name: "Shanda", last_name: "Poyner", email: "shanda@mail.com")

Ingredient.create(name: "bananas", expiration: "2019-12-01", user_id: 1)
Ingredient.create(name: "cherries", expiration: "2019-12-12", user_id: 1)
Ingredient.create(name: "flour", expiration: "2020-03-01",  user_id: 1)
Ingredient.create(name: "cream cheese", expiration: "2019-11-02", user_id: 2)
Ingredient.create(name: "plain yogurt", expiration: "2019-12-01", user_id: 2)
Ingredient.create(name: "penne", expiration: "2020-01-01", 
 user_id: 2)
Ingredient.create(name: "canned corn", expiration: "2020-02-01", user_id: 2)