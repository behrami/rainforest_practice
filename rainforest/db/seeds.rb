# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products= Product.create([{name: 'Dell Laptop', description: 'Brand new Windows Laptop', price: 1000},
                          {name: 'Macbook Laptop', description: 'Brand new Apple Laptop', price: 1500}])

customers= Customer.create([{name: 'Behram', email: 'behram@gmail.com'}, {name: 'Bob', email: 'bob@yahoo.com'}])

reviews= Review.create([{customer_id: 1, product_id: 1, content: 'Very fast laptop'},
                        {customer_id: 1, product_id: 2, content: 'Very expensive laptop'}])
