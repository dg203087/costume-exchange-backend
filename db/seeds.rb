# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


film = Category.create(name: "Film")
book = Category.create(name: "Book")
comic = Category.create(name: "Comic")
anime = Category.create(name: "Anime")
other = Category.create(name: "Other")

costume1 = Costume.create(title: "Corset from LotR", price: "$40", owner_name: "Deanna", owner_email: "deanna@gmail.com", location: "Astoria, Queens", description: "Arwen's corset from battle of Hemlms Deep", category_id: 1)