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

# Nested with user
10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password'
  )
  10.times do 
    cat = Cat.create(
      avatar: 'https://picsum.photos/200',
      name: Faker::Name.name,
      bio: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
      color: Faker::Color.color_name,
      age: Faker::Number.between(from: 1, to: 10),
      gender: Faker::Gender.binary_type,
      characteristics: Faker::Emotion.adjective, #=> "chagrined",
      owner_id: user.id
    )
    cat.save!
    user.save!
  end
end
