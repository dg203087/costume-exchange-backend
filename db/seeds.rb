#categories
film = Category.create(name: "Film")
tv = Category.create(name: "TV")
book = Category.create(name: "Book")
comic = Category.create(name: "Comic")
anime = Category.create(name: "Anime")
other = Category.create(name: "Other")

#costume 
costume1 = Costume.create(title: "Corset from LotR", price: "$40", owner_name: "Deanna", owner_email: "deanna@gmail.com", location: "Astoria, Queens", description: "Arwen's corset from battle of Hemlms Deep", category_id: 1)