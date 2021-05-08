# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Event.destroy_all
Image.destroy_all
User.destroy_all

user = User.create(username: 'fentybit', password: 'fentybit', firstname: 'Fenty', lastname:'Hall')

category = Category.create(name: 'Dog')

Event.create(title: 'Fun Day at the Dog Park', date: Date.today, time: Time.now, location: 'Playa Vista Dog Park', vibe: '😀', description: 'Dog having too much fun, and he could not control himself. Maybe I need to take him to another dog park to see how he is doing, he pooped twice.', category_id: category.id, user_id: user.id)

puts 'seeding success!'