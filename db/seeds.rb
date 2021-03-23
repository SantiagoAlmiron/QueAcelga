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
Product.destroy_all
puts "done"

puts "Creating admin user"
User.create(first_name: "Santiago", las_name: "Almiron", admin: true, phone_number: "+54 2364 030346", direction: "Calle falsa 123",
password: "123123", email: "sanalmiron@hotmail.com")

counter = 1
SABORES.values.each do |sabor|
  puts "Creando producto  #{counter}"
  product = Product.create(name: "#{sabor}", user_id_id: 1)
  puts "Saving"
  counter += 1  
end

# "https://unsplash.com/s/photos/comida#{counter}?orientation=squarish" Esto es para despues para poder agregarle las fotos