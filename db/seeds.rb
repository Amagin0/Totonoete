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

User.first_or_create!(name: "aaa", email: "a@a", password: "aaaaaa")
User.create!(name: "bbb", email: "b@b", password: "bbbbbb")
User.create!(name: "ccc", email: "c@c", password: "cccccc")

Question.create!(q_title: "銀行とかけまして　\n\r旅行ととく　\r\nそのこころは？",
                 q_description: "どちらもGoTo(強盗)対策が必要でしょう",
                 user_id: "1")

Question.create!(q_title: "南国のビーチとかけまして　\n\r休日の警察官ととく　\r\nそのこころは？",
                 q_description: "どちらも至福（私服）の時を過ごしています",
                 user_id: "1")

Question.create!(q_title: "牛丼とかけまして　\n\r海ととく　\r\nそのこころは？",
                 q_description: "どちらも並み(波)があるでしょう",
                 user_id: "1")

Question.create!(q_title: "漫画家とかけまして　\n\r秘密の関係ととく　\r\nそのこころは？",
                 q_description: "どちらもかくしごと(書く仕事、隠し事)でしょう",
                 user_id: "2")

Evaluation.create!(question_id: "151", user_id: "1", rate: "1000")
Evaluation.create!(question_id: "151", user_id: "2", rate: "800")
Evaluation.create!(question_id: "152", user_id: "1", rate: "1500")
Evaluation.create!(question_id: "152", user_id: "2", rate: "100")
Evaluation.create!(question_id: "153", user_id: "1", rate: "2000")
Evaluation.create!(question_id: "153", user_id: "2", rate: "500")
Evaluation.create!(question_id: "154", user_id: "2", rate: "100")
Evaluation.create!(question_id: "154", user_id: "3", rate: "200")