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
