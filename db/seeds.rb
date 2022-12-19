# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "creating user"
# user1 = User.create!(name: "Antoine", email: "antoine@gmail.com", password: "josé13")
# user1.photo.attach(io: antoine, filename: "antoine.jpeg", content_type: "image/jpeg")
puts "creating seed"

Car1 = Car.create(brand: "pigeot", model: "206", price: "3000")
Car2 = Car.create(brand: "renault", model: "twingo", price: "2000")
Car3 = Car.create(brand: "alfa", model: "146", price: "3000")
Car4 = Car.create(brand: "lada", model: "tundra", price: "3000")
Car5 = Car.create(brand: "bmw", model: "340i", price: "3000")
puts "finishing seed"
