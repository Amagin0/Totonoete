# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Theme.create!(q_theme: Faker::Creature::Animal.name)
  Theme.create!(q_theme: Faker::Creature::Dog.breed)
  Theme.create!(q_theme: Faker::Creature::Cat.breed)
  Theme.create!(q_theme: Faker::Bank.name)
  Theme.create!(q_theme: Faker::Book.title)
  Theme.create!(q_theme: Faker::Book.genre)
  Theme.create!(q_theme: Faker::Coffee.country)
  Theme.create!(q_theme: Faker::Color.color_name)
  Theme.create!(q_theme: Faker::Food.sushi)
  Theme.create!(q_theme: Faker::Games::Pokemon.name)
  Theme.create!(q_theme: Faker::Games::Pokemon.location)
  Theme.create!(q_theme: Faker::Games::Pokemon.move)
  Theme.create!(q_theme: Faker::Games::SuperMario.character)
  Theme.create!(q_theme: Faker::Games::SuperMario.game)
  Theme.create!(q_theme: Faker::Restaurant.type)
end

User.first_or_create!(name: "aaa", email: "a@a", password: "aaaaaa")
User.create!(name: "bbb", email: "b@b", password: "bbbbbb")
User.create!(name: "ccc", email: "c@c", password: "cccccc")
User.create!(name: "ddd", email: "d@d", password: "dddddd")


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

Evaluation.create!(question_id: "1", user_id: "1", rate: "3")
Evaluation.create!(question_id: "1", user_id: "2", rate: "3")
Evaluation.create!(question_id: "1", user_id: "3", rate: "3")
Evaluation.create!(question_id: "1", user_id: "4", rate: "3")
Evaluation.create!(question_id: "2", user_id: "1", rate: "2")
Evaluation.create!(question_id: "2", user_id: "2", rate: "2")
Evaluation.create!(question_id: "3", user_id: "1", rate: "2")
Evaluation.create!(question_id: "3", user_id: "2", rate: "3")
Evaluation.create!(question_id: "4", user_id: "1", rate: "3")
Evaluation.create!(question_id: "4", user_id: "2", rate: "3")
Evaluation.create!(question_id: "4", user_id: "3", rate: "2")
Evaluation.create!(question_id: "4", user_id: "3", rate: "2")