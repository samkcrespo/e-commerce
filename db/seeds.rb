# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "seeding users"
u1 = User.create!(first_name: 'Bob', last_name: 'Pancakes', username: 'bobpancakes', password: 'pancake1234', email: 'bobpancakes@pancakes.com')

u2 = User.create!(first_name: 'Bella', last_name: 'Goth', username: 'bellagoth', password: 'goth1234', email: 'bellagoth@goths.com')

puts "seeding products"

p1 = Product.create!(title: "Laptop 1", description: "Laptop 1 is the newest version of laptops, with 64 GB of RAM, 2 TB, and an nvdia GEFORCE RTX graphics card")
p2 = Product.create!(title: "Desktop 1", description: "This is the desktop description")

puts "seeding categories"

c1 = Category.create!(name: "Electronics")