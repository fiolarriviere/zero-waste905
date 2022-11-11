puts "------------------------------------------------------------------------------------------------"
puts "Ejecutando borrado de tablas"
Order.destroy_all
LineItem.destroy_all
Product.destroy_all
Category.destroy_all
User.destroy_all
puts "Datos borrados perfectamente"
puts "------------------------------------------------------------------------------------------------"

require "open-uri"

puts "------------------------------------------------------------------------------------------------"
puts "USUARIOS"
puts "------------------------------------------------------------------------------------------------"
puts "creando usuario 1"
usuario1 = User.new(
  first_name: "Ana", last_name: "Perez", phone_number: "989898898", ruc: "989898898000",
  dni: "98989880", address: "Av. Larco 1711", city: "Trujillo", latitude: "",
  longitude: "", email: "hola@gmail.com", password: "123456", business_name: "sugo"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario1.photo.attach(io: photo, filename: "usuario1.png", content_type: "image/png")
usuario1.save
puts "usuario 1 creado"
puts "creando usuario 2"

usuario2 = User.new(
  first_name: "Juan", last_name: "Díaz", phone_number: "46644646", ruc: "466446464444",
  dni: "46644648", address: "Av. El Golf 244", city: "Trujillo", latitude: "",
  longitude: "", email: "jd@gmail.com", password: "123456", business_name: "wong"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario2.photo.attach(io: photo, filename: "usuario2.png", content_type: "image/png")
usuario2.save
puts "usuario 2 creado"
puts "creando usuario 3"

usuario3 = User.new(
  first_name: "Jhon", last_name: "Smith", phone_number: "49994646", ruc: "",
  dni: "46677648", address: "Av. Flora Tristan 324", city: "Lima", latitude: "",
  longitude: "", email: "js@gmail.com", password: "123456"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario3.photo.attach(io: photo, filename: "usuario3.png", content_type: "image/png")
usuario3.save
puts "usuario 3 creado"

puts "creando usuario 4"
usuario4 = User.new(
  first_name: "Alexandra", last_name: "Jimenez", phone_number: "76556776", ruc: "",
  dni: "46644827", address: "Av el golf de los incas 488", city: "Surco", latitude: "",
  longitude: "", email: "aj@gmail.com", password: "123456"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario4.photo.attach(io: photo, filename: "usuario4.png", content_type: "image/png")
usuario4.save
puts "usuario 4 creado"
puts "creando usuario 5"
usuario5 = User.new(
  first_name: "Maria", last_name: "Romero", phone_number: "46987646", ruc: "",
  dni: "46622648", address: "Calle Geranios 311", city: "Arequipa", latitude: "",
  longitude: "", email: "mrom@gmail.com", password: "1234567"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario5.photo.attach(io: photo, filename: "usuario5.png", content_type: "image/png")
usuario5.save
puts "usuario 5 creado"
puts "creando usuario 6"
usuario6 = User.new(
  first_name: "Adrian", last_name: "Bello", phone_number: "46364646", ruc: "",
  dni: "43434548", address: "Av. El Sol 114", city: "Cusco", latitude: "",
  longitude: "", email: "abello@gmail.com", password: "123456"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario6.photo.attach(io: photo, filename: "usuario6.png", content_type: "image/png")
usuario6.save
puts "usuario 6 creado"
puts "------------------------------------------------------------------------------------------------"

puts "CATEGORIAS"

puts "------------------------------------------------------------------------------------------------"
puts "creando categoria 1"
maquillaje = Category.create!(name: "Maquillaje")
puts "Category 1 creada"

puts "creando categoria 2"
abarrote = Category.create!(name: "Abarrotes")
puts "Category 2 creada"

puts "creando categoria 3"
electronico = Category.create!(name: "Electrónicos")
puts "Category 3 creada"

puts "creando categoria 4"
cuidado = Category.create!(name: "Cuidado personal")
puts "Category 4 creada"

puts "creando categoria 5"
libreria = Category.create!(name: "Libreria")
puts "Category 5 creada"

puts "creando categoria 6"
juguete = Category.create!(name: "Juguetes")
puts "Category 6 creada"
puts "------------------------------------------------------------------------------------------------"
puts juguete
puts "PRODUCTS"
# ERYCK
puts "------------------------------------------------------------------------------------------------"
puts "creando Categoria - Maquillaje"
puts "creando Producto 1 categoria 1"
product1 = Product.new(
  category_id: maquillaje.id, name: "Covergirl Base de Maquillaje", original_price: 46.90, discount: 20, price: 37.52, stock: 75,
  description: "Covergirl Base de Maquillaje TruBlend Matte Made Liquid Makeup Classic Ivory L41.",
  user_id: usuario1.id
)
photo = URI.open("https://m.media-amazon.com/images/I/71ozvy1dX9L._SL1500_.jpg")
product1.photos.attach(io: photo, filename: "product1.png", content_type: "image/png")
product1.save
