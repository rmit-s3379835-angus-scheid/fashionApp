# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#inventory = Item.create([{name: 't-shirt', category: 'Mens', price: 10.00, popularity: 20.00 }  ])

Item.create(name: 'T-shirt', category: 'Men', price: 10.00, popularity: 20.00)
Item.create(name: 'Dress', category: 'Women', price: 15.00, popularity: 17.00)
Item.create(name: 'Jacket', category: 'Men', price: 20.00, popularity: 27.00)
Item.create(name: 'Jeans', category: 'Women', price: 16.00, popularity: 30.00)
Item.create(name: 'Children\'s t-shirt', category: 'Children', price: 8.00, popularity: 12.00)
Item.create(name: 'Shoes', category: 'Men', price: 25.00, popularity: 25.50)