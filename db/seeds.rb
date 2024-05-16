# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

categories = ["chinese", "italian", "japanese", "french", "belgian"]

Restaurant.create!([
  {
    name: "Yam Yam",
    address: "Berlin Mitte",
    phone_number: "0306748392",
    category: categories.sample
  },
  {
    name: "Standard Pizza",
    address: "Berlin Prenzlauer Berg",
    phone_number: "0306748452",
    category: categories.sample
  },
  {
    name: "Cafe Europa",
    address: "Berlin Mitte",
    phone_number: "0306448452",
    category: categories.sample
  },
  {
    name: "Daheim",
    address: "Berlin Pankow",
    phone_number: "0306448222",
    category: categories.sample
  },
  {
    name: "Das Gift",
    address: "Berlin Neukölln",
    phone_number: "0306668222",
    category: categories.sample
  }
])
