# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all

car1 = Car.create!(brand: "mini", price: "500", photo_url: "mini.jpg")
car2 = Car.create!(brand: "scenic", price: "100", photo_url: "Scenic.jpg")
car3 = Car.create!(brand: "delorean", price: "400", photo_url: "delorean.jpg")
car4 = Car.create!(brand: "aston-martin", price: "800", photo_url: "aston-martin.jpg")
car5 = Car.create!(brand: "k-2000", price: "20", photo_url: "k-2000.jpg")
