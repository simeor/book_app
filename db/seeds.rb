# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

50.times do

Book.create(
  name: Faker::Book.title,
  auther: Faker::Book.author,
  rating: rand(1..5)
  )
puts "created record"
end

puts "completed seed"
