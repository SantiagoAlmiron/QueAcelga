
puts "clearing database"
User.destroy_all
Amount.destroy_all
Order.destroy_all
Product.destroy_all
Price.destroy_all
puts "done"

puts "Creating admin user"
User.create(first_name: "Santiago", last_name: "Almiron", admin: true, phone_number: "+54 2364 030346", direction: "Calle falsa 123",
password: "123123", email: "sanalmiron@hotmail.com")

puts "Creating Price Model"
Price.create(price_4: 170, price_8: 300, price_12: 400)
