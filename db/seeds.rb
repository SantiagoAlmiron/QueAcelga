require "open-uri"

SABORES = {
  milanesa1: "Calabaza y queso",
  milanesa2: "Berenjena",
  milanesa3: "Acelga y queso",
  milanesa4: "Cuatro quesos",
  milanesa5: "Zanahoria, cebolla y queso",
  milanesa6: "Capresce",
  milanesa7: "Jamón y queso",
  milanesa8: "Cebolla y queso"
}

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

counter = 1
user = User.find_by(first_name: "Santiago")
SABORES.values.each do |sabor|
  puts "Creating Products  #{counter}"
  product = Product.create(name: "#{sabor}", user_id: "#{user.id}")
  puts "Saving"
  counter += 1  
end

puts "Creating Price Model"
Price.create(price_4: 170, price_8: 300, price_12: 400)
