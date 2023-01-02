# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: "Dana Pughakoff", email: "danainjax@gmail.com", city: "Ponte Vedra", state: "FL")
User.create(name: "danainjax", email: "danainjax@gmail.com", password: "dana")
Imdb.most_popular
Movie.first.reviews.create(user: User.first, rating: 3, sex: "A few kisses", violence: "Death and blowing things up", language: "S*it!", comment: "Great for 12 and up!")
Trailer.get_trailers
# reset database on 01/01/23 due to imdb api using different link for images.