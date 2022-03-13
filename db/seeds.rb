# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Question.create!(odai: Faker::Creature::Animal.name)
  Question.create!(odai: Faker::Creature::Dog.breed)
  Question.create!(odai: Faker::Creature::Cat.breed)
  Question.create!(odai: Faker::Bank.name)
  Question.create!(odai: Faker::Book.title)
  Question.create!(odai: Faker::Book.genre)
  Question.create!(odai: Faker::Coffee.country)
  Question.create!(odai: Faker::Color.color_name)
  Question.create!(odai: Faker::Food.sushi)
  Question.create!(odai: Faker::Games::Pokemon.name)
  Question.create!(odai: Faker::Games::Pokemon.location)
  Question.create!(odai: Faker::Games::Pokemon.move)
  Question.create!(odai: Faker::Games::SuperMario.character)
  Question.create!(odai: Faker::Games::SuperMario.game)
  Question.create!(odai: Faker::Restaurant.type)
end



