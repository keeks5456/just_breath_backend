# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create({
    username: Faker::TvShows::RickAndMorty.character,
    bio: Faker::TvShows::RickAndMorty.quote,
    avatar: "https://prodimage.images-bn.com/pimages/0889698301824_p0_v1_s550x406.jpg",
    password: 'bacon',
    password_confirmation: 'bacon'
})


puts 'seeds done'


# User.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     street: '432 Octavia St ',
#     city: 'San Francisco',
#     state: 'CA',
#     zipcode: 94_102,
#     birth_year: rand(1980..2000),
#     img_url: Faker::Avatar.image,
#     email: Faker::Internet.email,
#     password: '123',
#     password_confirmation: '123'
#   )