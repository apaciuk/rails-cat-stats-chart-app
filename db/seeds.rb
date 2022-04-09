# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
require 'faker'
100.times do
  cat = Cat.create(
    avatar: Faker::Avatar.image,
    name: Faker::Name.name,
    bio: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
    color: Faker::Color.color_name,
    age: Faker::Number.between(from: 1, to: 10),
    gender: Faker::Gender.binary_type,
    characteristics: Faker::Emotion.adjective #=> "chagrined"
  )
  cat.save!
end
