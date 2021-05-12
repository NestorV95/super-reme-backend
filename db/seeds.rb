require 'faker'
Store.destroy_all
User.destroy_all
Order.destroy_all
Product.destroy_all
OrderProduct.destroy_all


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# cat_array = ['', '']
# cat_array[rand(0..(cat_array.length)]



htx = Store.create(image: '', name: 'Super-reme HTX', address: "#{rand(1000..9999)}#{Faker::Address.street_name}", city: 'Houston', zip: Faker::Address.zip, phone: Faker::PhoneNumber.cell_phone, email: 'address@super-reme.com')

10.times do 
    Product.create(store: htx,name: Faker::Music.album, description: Faker::TvShows::AquaTeenHungerForce.quote,category: 'Shirt',image: '' , price: rand(1..1000), stock: rand(0..15))
end

me = User.create(first_name:'Nestor', last_name: 'Venegas', username: 'yuh_boi',email:'address@email.com', password:'123',)

mine = Order.create(user: me, order_number: 'xx123456')

op1 = OrderProduct.create(order: mine, product: Product.first)
op2 = OrderProduct.create(order: mine, product: Product.second)
op3 = OrderProduct.create(order: mine, product: Product.third)
