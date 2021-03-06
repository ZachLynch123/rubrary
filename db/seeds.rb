# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'a@gmail.com', password: 'password')
favorite = Favorite.create(is_favorite: true)
favorite2 = Favorite.create(is_favorite: false)

book = Book.create(title: 'it', description: 'this is it', user_id: user.id, favorite_id: favorite.id)

book2 = Book.create(title: 'Dune', description: 'the book, the movie, then the movie again', user_id: user.id, favorite_id: favorite2.id)