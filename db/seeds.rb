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

cat_array = ['Caps', 'Tops', 'Coats', 'Hoodies', 'Jackets', 'Socks', 'Scarves']
product_array = ['https://assets.supremenewyork.com/211250/ma/C3nAHFB7B9U.jpg', 'https://assets.supremenewyork.com/204836/ma/GMmWvANQLWU.jpg', 'https://assets.supremenewyork.com/205030/ma/aETA_U6l6mY.jpg', 'https://assets.supremenewyork.com/205069/ma/mjYHiqVTLqw.jpg', 'https://assets.supremenewyork.com/204930/ma/VtiH1M_liCs.jpg', 'https://assets.supremenewyork.com/206145/ma/L0G5zYLdwIo.jpg', 'https://assets.supremenewyork.com/205983/ma/wBJaqXtTXR4.jpg', "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9bc6tP15dtp5RUuJRgnr6lgykyGa9iXUW2lMsekLKZJlHvVvx77HrayFfcIjCMO1mqv_rIXMj&usqp=CAc", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl277i9WK7ahD_VtjjSltCA6yG9WzbMeaWt3-TJ2UFREv2Ic9aNrUXle-6SPr57bi4jmyoF2U&usqp=CAc","https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTOVwiwB4GaPlUDK95gepSc31pQnNKsT__fb1uDNK-ScUuCH9fNRB0oxaXeb6W4lXWMcmAT5k_PvcxxxjW0eMcvXv2mSJWsUbWmmrm5z4zMSfnrwR5udhLzqQ&usqp=CAE","https://scene7.zumiez.com/is/image/zumiez/product_main_medium_2x/A-Lab-Trip-On-This-Black-T-Shirt--_310350-front-US.jpg", "https://static.wikia.nocookie.net/rickandmorty/images/f/f7/Mr._Meeseeks_Box.png/revision/latest?cb=20160909153718", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtEV8zohnkrCCIEJtJLGPkwTe4BoMJZP7hXnNNLNv2uK1OZZM6dlMnQh8UaA&usqp=CAc", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxGpj5f1LpZLWITjQMW190esU57l8B53AoYCeKN4neqIRFg18wX3yOPHEMbLJ9tyUYn8AjAaw&usqp=CAc", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQMsC9wNKrqZn6cokwBOmPV0zFBgKtg3y5kyBQ9x9BAQhg01bkBpMwlNbBIa9RBp6wlZErQII&usqp=CAc", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNWGFCPS6cV6LBzAw6MTnVPjtf817grbHe4g&usqp=CAU", "https://m.media-amazon.com/images/I/A1ntnF3PJOL._CLa%7C2140%2C2000%7C81OZA056g0L.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_UL1500_.png", "https://i2.wp.com/teeqq.sfo2.digitaloceanspaces.com/2019/06/Afbq4xYaqszqRJPqdWZRfTgMAn8geuP69826T57kYkXg9MsFGY_k4l1cvqdo7ey-3.png?ssl=1", "https://cdn-images.farfetch-contents.com/14/72/69/56/14726956_23307919_1000.jpg", "https://process.fs.grailed.com/AJdAgnqCST4iPtnUxiGtTz/auto_image/cache=expiry:max/rotate=deg:exif/resize=height:1400/output=quality:90/compress/https://cdn.fs.grailed.com/api/file/LgoZivqPQt2ln0fX8Ost"]



htx = Store.create(image: 'https://d17ol771963kd3.cloudfront.net/assets/stores/store_11-4a142bdb15e1c9b13fca22701268ebc7.jpg', name: 'Super-reme HTX', address: "#{rand(1000..9999)}#{Faker::Address.street_name}", city: 'Houston', zip: Faker::Address.zip, phone: Faker::PhoneNumber.cell_phone, email: 'address@super-reme.com')

10.times do 
    Product.create(store: htx,name: Faker::Music.album, description: Faker::TvShows::AquaTeenHungerForce.quote,category: cat_array[rand(0..(cat_array.length-1))], image: product_array[rand(0..(product_array.length))] , price: rand(1..1000), stock: rand(0..15))
end

me = User.create(first_name:'Nestor', last_name: 'Venegas', username: 'yuh_boi',email:'address@email.com', password:'123',)

mine = Order.create(user: me, order_number: 'xx123456')

op1 = OrderProduct.create(order: mine, product: Product.first)
op2 = OrderProduct.create(order: mine, product: Product.second)
op3 = OrderProduct.create(order: mine, product: Product.third)
