# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do |n|
  name  = Faker::Name.name
  email = Faker::Internet.email
  password = "pass123456"
  User.create!(username:  name,
               email: email,
               password:              password,
               password_confirmation: password )
end

users = User.take(15)
users.each do |user|
  4.times do
    title = Faker::Hacker.say_something_smart
    body  = Faker::Lorem.paragraph
    user.posts.create!(title: title,
                       body:  body)
  end
end