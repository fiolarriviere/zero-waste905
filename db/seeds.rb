puts "borrando"
Order.destroy_all
LineItem.destroy_all
Product.destroy_all
Category.destroy_all
User.destroy_all
puts "creando usuario 1"
require "open-uri"

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
  first_name: "Jhon", last_name: "Smith", phone_number: "49994646", ruc: "466446464404",
  dni: "46677648", address: "Av. Flora Tristan 324", city: "Lima", latitude: "",
  longitude: "", email: "js@gmail.com", password: "123456"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario3.photo.attach(io: photo, filename: "usuario3.png", content_type: "image/png")
usuario3.save
puts "usuario 3 creado"

puts "creando usuario 4"
usuario4 = User.new(
  first_name: "Alexandra", last_name: "Jimenez", phone_number: "76556776", ruc: "765567765374",
  dni: "46644827", address: "Av el golf de los incas 488", city: "Surco", latitude: "",
  longitude: "", email: "aj@gmail.com", password: "123456"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario4.photo.attach(io: photo, filename: "usuario4.png", content_type: "image/png")
usuario4.save
puts "usuario 4 creado"
puts "creando usuario 5"
usuario5 = User.new(
  first_name: "Maria", last_name: "Romero", phone_number: "46987646", ruc: "4664464000044",
  dni: "46622648", address: "Calle Geranios 311", city: "Arequipa", latitude: "",
  longitude: "", email: "mrom@gmail.com", password: "1234567"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario5.photo.attach(io: photo, filename: "usuario5.png", content_type: "image/png")
usuario5.save
puts "usuario 5 creado"
puts "creando usuario 6"
usuario6 = User.new(
  first_name: "Adrian", last_name: "Bello", phone_number: "46364646", ruc: "4092388444",
  dni: "43434548", address: "Av. El Sol 114", city: "Cusco", latitude: "",
  longitude: "", email: "abello@gmail.com", password: "123456"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario6.photo.attach(io: photo, filename: "usuario6.png", content_type: "image/png")
usuario6.save
puts "usuario 6 creado"

# CATEGORIAS

puts "creando categoria 1"
Category.create!(
  name: "Maquillaje"
)
puts "Category 1 creada"

puts "creando categoria 2"
Category.create!(
  name: "Abarrotes"
)
puts "Category 2 creada"

puts "creando categoria 3"
Category.create!(
  name: "Electrónicos"
)
puts "Category 3 creada"

puts "creando categoria 4"
Category.create!(
  name: "Cuidado personal"
)
puts "Category 4 creada"

puts "creando categoria 5"
Category.create!(
  name: "Libreria"
)
puts "Category 5 creada"

puts "creando categoria 6"
Category.create!(
  name: "Juguetes"
)
puts "Category 6 creada"

# ERYCK

puts "creando Producto 1 categoria 1"
product1 = Product.new(
  category_id: 1, name: "Polvo compacto Asepxia FPS 15 Canela Mate", original_price: 31.90,
  discount: 27, price: 23.40, stock: 12, expiration_date: "2023/07/02",
  description: "Maquillaje polvo compacto Anti-imperfecciones en tono canela que ayuda a cubrir granitos y espinillas.
  Cuenta con una textura micronizada que absorbe el exceso de grasa y elimina el brillo en el rostro",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/209767-1000-1000/https---imgproductos.jpg?v=638006047682430000")
product1.photos.attach(io: photo, filename: "product1.png", content_type: "image/png")
product1.save
puts "producto 1,Maquillaje creado"
puts "creando Producto 2 categoria 1"

product1 = Product.new(
  category_id: 1, name: "Iluminador Milani Strobelight Glowing", original_price: 64, discount: 50,
  price: 32, stock: 23, expiration_date: "2022/12/21",
  description: "Iluminador instantáneo en polvo compacto que contiene perlas reflectoras de luz que brindan un
  acabado radiante. Para todo tipo y tono de piel.",
  user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/209527-280-280/https---imgproductos.jpg?v=638006040065000000")
product1.photos.attach(io: photo, filename: "product2.png", content_type: "image/png")
product1.save
puts "producto 2,Maquillaje creado"

product1 = Product.new(
  category_id: 1, name: "Base Maybelline Fit me!Matte+Poreless Tono Java-30 ml", original_price: 39.90, discount: 57,
  price: 17.10, stock: 9, expiration_date: "2023/01/13",
  description: "Si buscas la base perfecta para tu piel recuerda que esta base debe igualar el tono y la textura de
  tu piel. Nuestra fórmula líquida matificante es ideal para la piel normal a grasa.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/209745-1000-1000/https---imgproductos.jpg?v=638006047381700000")
product1.photos.attach(io: photo, filename: "product3.png", content_type: "image/png")
product1.save
puts "producto 3,Maquillaje creado"

product1 = Product.new(
  category_id: 1, name: "Brocha Milani MBR551 Pro-Performance Brushes Blending", original_price: 74, discount: 50,
  price: 37, stock: 19, expiration_date: "2022/12/19",
  description: "Pincel diseñado para la aplicación de iluminador. Su forma ovalada cónica es precisa para contornear
  o resaltar, para una fácil aplicación y distribución del producto.",
  user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/209521-280-280/https---imgproductos.jpg?v=638006039903530000")
product1.photos.attach(io: photo, filename: "product4.png", content_type: "image/png")
product1.save
puts "producto 4,Maquillaje creado"

product1 = Product.new(
  category_id: 1, name: "Labial Givenchy Le Rouge fearless N332", original_price: 149, discount: 46, price: 80.46,
  stock: 15, expiration_date: "2022/12/07", description: "Labial rojo", user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/209767-1000-1000/https---imgproductos.jpg?v=638006047682430000")
product1.photos.attach(io: photo, filename: "product5.png", content_type: "image/png")
product1.save
puts "producto 5,Maquillaje creado"

product1 = Product.new(
  category_id: 1, name: "Labial Elizabeth Arden Beautiful Color Bold Liquid",
  original_price: 79, discount: 50, price: 39.60, stock: 5, expiration_date: "2023/01/02",
  description: "El color de labios cremoso y de alto impacto combina la cobertura y la intensidad del lápiz
  labial con el acabado de un brillo.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/209724-1000-1000/https---imgproductos.jpg?v=638006047073770000")
product1.photos.attach(io: photo, filename: "product6.png", content_type: "image/png")
product1.save
puts "producto 6,Maquillaje creado"

product1 = Product.new(
  category_id: 2, name: "Bombones Chocolate Bon o Bon, Caja Prisma x 75gr", original_price: 12, discount: 53,
  price: 5.70, stock: 43, expiration_date: "2022/12/09",
  description: "Bombones con chocolate de leche y oblea rellenos con crema de maní/cacahuate.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/210863-280-280/https---imgproductos.jpg?v=638012717710830000")
product1.photos.attach(io: photo, filename: "product7.png", content_type: "image/png")
product1.save
puts "producto 1,cat Abarrotes creado"

product1 = Product.new(
  category_id: 2, name: "Tallarines Sabor Bolognesa Nissin-Vaso 68 gr", original_price: 5, discount: 50,
  price: 2.50, stock: 99, expiration_date: "2023/02/23",
  description: "Tallarines con salsa tipo bolognesa, listos en tan solo 5 minutos.",
  user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/210718-280-280/https---imgproductos.jpg?v=638012712191000000")
product1.photos.attach(io: photo, filename: "product8.png", content_type: "image/png")
product1.save
puts "producto 2,cat Abarrotes creado"

product1 = Product.new(
  category_id: 2, name: "Cerveza en lata Budweiser-SixPack x 269 ML c/u", original_price: 22, discount: 34,
  price: 14.60, stock: 41, expiration_date: "2023/02/13",
  description: "Budweiser es el rey de las cervezas, ya que es una de las mejores marcas de bebidas alcohólicas en
  todo el mundo.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/210718-280-280/https---imgproductos.jpg?v=638012712191000000")
product1.photos.attach(io: photo, filename: "product9.png", content_type: "image/png")
product1.save
puts "producto 3,cat Abarrotes creado"

product1 = Product.new(
  category_id: 2, name: "Infusión Mc Colins En Línea-Paquete x 20 unid", original_price: 8.50, discount: 50,
  price: 4.25, stock: 14, expiration_date: "2023/03/16",
  description: "Con cola de caballo y diente de León, hierbas finamente seleccionadas. Estas hierbas han sido consumidas
  para ayudar a que las personas se sientan más livianas.",
  user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/191351-1000-1000/https---imgproductos.jpg?v=637982538829200000")
product1.photos.attach(io: photo, filename: "product10.png", content_type: "image/png")
product1.save
puts "producto 4,cat Abarrotes creado"

product1 = Product.new(
  category_id: 2, name: "Barra de Proteinas Anku Berries y Vainilla-40gr", original_price: 8, discount: 30,
  price: 5.60, stock: 17, expiration_date: "2023/05/07",
  description: "Barra proteica con un sabor sútil entre frutos del bosque y cookie dough. Este sabor se debe a una
  cuidadoso blend de arándanos rojos, sauco, granos andinos y almendras. Contiene 11.2 gramos de proteínas y 154 kcal.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/210657-1000-1000/https---imgproductos.jpg?v=638012304135830000")
product1.photos.attach(io: photo, filename: "product11.png", content_type: "image/png")
product1.save
puts "producto 5,cat Abarrotes creado"

product1 = Product.new(
  category_id: 2, name: "Panetón Chochotón D'Onofrio-500gr", original_price: 21.5, discount: 25,
  price: 16.15, stock: 12, expiration_date: "2022/23/12", description: "pan chocolate",user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/193148-1000-1000/https---imgproductos.jpg?v=637995888832700000")
product1.photos.attach(io: photo, filename: "product12.png", content_type: "image/png")
product1.save
puts "producto 6,cat Abarrotes creado"

#JEAN

puts "------------------------------------------------------------------------------------------------"
puts "creando Product 13 - category Electrónicos"
product13 = Product.new(
  category_id: 3, name: "Plancha Cyzone All In", original_price: 140, discount: 50,
  price: 70, stock: 10, expiration_date: "2022/11/15",
  description: "Plancha versátil, ya que tiene 3 funcionalidades para lograr 3 distintos peinados y miles de looks. Cuenta con un acabado metalizado y placas calentadoras de aluminio.​ cambia las placas para tener distintos peinados: look liso, waffle o con ondas.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/210206-1000-1000/https---imgproductos.jpg?v=638010093389100000")
product13.photos.attach(io: photo, filename: "product13.png", content_type: "image/png")
product13.save
puts "Product - category 3 creada"

puts "creando Product 14 - category Electrónicos"
product14 = Product.new(
  category_id: 3, name: "Freidora Tradicional DeLonghi", original_price: 699,
  discount: 40, price: 419.40, stock: 5, expiration_date: "2022/12/20",
  description: "Freidora de 1800W con capacidad de 2.4L. Tiene 5 niveles de temperatura, tapa extraíble para fácil limpieza e interior de teflón antiadherente. Garantía de 1 año.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/210206-1000-1000/https---imgproductos.jpg?v=638010093389100000")
product14.photos.attach(io: photo, filename: "product14.png", content_type: "image/png")
product14.save
puts "Product 2 - category 3 creada"

puts "creando Product 15 - category Electrónicos"
product15 = Product.new(
  category_id: 3, name: "Calentador a Gas FDV paso continuo - 5.5L", original_price: 649,
  discount: 38, price: 402.40, stock: 2, expiration_date: "2022/12/01",
  description: "No requiere tubo de evacuación y cuenta con deflector incorporado. Botón de encendido eléctrico (pilas no incluidas). No incluye mangueras de abasto. No incluye kit de instalación. Garantía de 1 año.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/190875-1000-1000/https---imgproductos.jpg?v=637982527357970000")
product15.photos.attach(io: photo, filename: "product15.png", content_type: "image/png")
product15.save
puts "Product - category 3 creada"
puts "creando Product 4 - category Electrónicos"
product16 = Product.new(
  category_id: 3, name: "Parrilla Practika Etna II", original_price: 199.90, discount: 40,
  price: 119.90, stock: 1, expiration_date: "2022/11/29",
  description: "Parrilla de 2000W con 6 niveles de temperatura, asas frías al tacto, apagado automático y bandeja recolectora de grasa. Garantía de 1 año.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/188204-1000-1000/https---imgproductos.jpg?v=637968645091700000")
product16.photos.attach(io: photo, filename: "product16.png", content_type: "image/png")
product16.save
puts "Product - category 3 creada"
puts "creando Product 17 - category Electrónicos"
product17 = Product.new(
  category_id: 3, name: "Batidora Taurus Mixing Chef 500", original_price: 429.90,
  discount: 34, price: 283.99, stock: 3, expiration_date: "2022/12/15",
  description: "Con la batidora amasadora Mixing Chef Compact podrás realizar hasta 5 funciones distintas: amasar, batir, mezclar, montar y emulsionar. Combina sus 3 ganchos según tus preferencias y realiza todo tipo de recetas. Garantía de 1 año.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/192057-1000-1000/https---imgproductos.jpg?v=637987686101330000")
product17.photos.attach(io: photo, filename: "product17.png", content_type: "image/png")
product17.save
puts "Product - category 3 creada"
puts "creando Product 18 - category Electrónicos"
product18 = Product.new(
  category_id: 3, name: "Exprimidor Practika TC-8", original_price: 69.90, discount: 30,
  price: 48.93, stock: 2, expiration_date: "2022/11/27", description: "Exprimidor de uso domestico.",
  user_id: 1
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/193357-1000-1000/https---imgproductos.jpg?v=637998480442100000")
product18.photos.attach(io: photo, filename: "product18.png", content_type: "image/png")
product18.save
puts "Product - category 3 creada"
puts "------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------"
puts "creando Product 1 - Cuidado Personal"
product19 = Product.new(
  category_id: 4, name: "Toallitas Desmaquilladoras Nivea Roses", original_price: 25.90, discount: 75,
  price: 6.60, stock: 23, expiration_date: "2022/12/20",
  description: "Retiran suave y fácilmente el maquillaje a prueba de agua sin frotar ni enjuagar. Limpieza profunda para la piel e hidratación prolongada hasta por 8 horas.",
  user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/210892-1000-1000/https---imgproductos.jpg?v=638012718291530000")
product19.photos.attach(io: photo, filename: "product19.png", content_type: "image/png")
product19.save
puts "Product 1 - category 4 creada"
puts "creando Product 20 - Cuidado Personal"
product20 = Product.new(
  category_id: 4, name: "Pastillas dentífricas Just Bite Sabor Menta Ecologics", original_price: 17.90,
  discount: 8, price: 16.5, stock: 25, expiration_date: "2023/02/22",
  description: "Muerde una pastilla (Cada pastilla es la dosis ideal para el cepillado), Moja tu cepillo, Cepilla y disfruta! Repite tres veces al día, todos los días",
  user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/209803-1000-1000/https---imgproductos.jpg?v=638006048038700000")
product20.photos.attach(io: photo, filename: "product20.png", content_type: "image/png")
product20.save
puts "Product - category 4 creada"
puts "creando Product 21 - Cuidado Personal"
product21 = Product.new(
  category_id: 4, name: "Loción Ponds Biohydratante Dual - 200ml", original_price: 24.90,
  discount: 35, price: 16.10, stock: 10, expiration_date: "2022/12/12",
  description: "Elimina los residuos de maquillaje a prueba de agua y las impurezas de tu rostro y ojos, dejando tu piel hidratada y sin sensación grasosa.",
  user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/209803-1000-1000/https---imgproductos.jpg?v=638006048038700000")
product21.photos.attach(io: photo, filename: "product21.png", content_type: "image/png")
product21.save
puts "https://sugope.vteximg.com.br/arquivos/ids/210793-1000-1000/https---imgproductos.jpg?v=638012716150530000"
puts "Product - category 4 creada"
puts "creando Product 22 - Cuidado Personal"
product22 = Product.new(
  category_id: 4, name: "Limpieza Facial Pond's Fruitty Fre Aloe - 200ml", original_price: 28.90,
  discount: 30, price: 20.20, stock: 44, expiration_date: "2022/12/28",
  description: "Limpieza Facial Pond's Fruitty Fre Aloe - 200ml",
  user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/209803-1000-1000/https---imgproductos.jpg?v=638006048038700000")
product22.photos.attach(io: photo, filename: "product22.png", content_type: "image/png")
product22.save
puts "https://sugope.vteximg.com.br/arquivos/ids/210798-1000-1000/https---imgproductos.jpg?v=638012716259030000"
puts "Product - category 4 creada"
puts "creando Product 23 - Cuidado Personal"
product23 = Product.new(
  category_id: 4, name: "Crema Facial Ponds Humectante Nutritiva - 50g", original_price: 12.9,
  discount: 22, price: 10, stock: 30, expiration_date: "2023/04/12",
  description: "Crema Facial Ponds Humectante Nutritiva - 50g",
  user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/209803-1000-1000/https---imgproductos.jpg?v=638006048038700000")
product23.photos.attach(io: photo, filename: "product23.png", content_type: "image/png")
product23.save
puts "https://sugope.vteximg.com.br/arquivos/ids/210921-1000-1000/https---imgproductos.jpg?v=638012719080200000"
puts "Product - category 4 creada"
puts "creando Product 24 - Cuidado Personal"
product24 = Product.new(
  category_id: 4, name: "Protector Solar Nivea Protect & Bronze - 200ml", original_price: 39.90, discount: 40,
  price: 23.94, stock: 20, expiration_date: "2023/06/17",
  description: "Su fórmula ultraligera y no grasa contiene un sistema de filtros UVA/UVB altamente eficaz que protege la piel inmediatamente tras su aplicación. Resistente al agua.",
  user_id: 2
)
photo = URI.open("https://sugope.vteximg.com.br/arquivos/ids/191165-1000-1000/https---imgproductos.jpg?v=637982535425270000")
product24.photos.attach(io: photo, filename: "product24.png", content_type: "image/png")
product24.save
puts "Product - category 4 creada"
puts "------------------------------------------------------------------------------------------------"


#FIORE

puts "creando producto = Product 1 - category 5"
product100 = Product.new(
  category_id: 5,
  name: "Ruido. Un fallo en el juicio humano",
  original_price: 50,
  discount: 10,
  price: 40,
  stock: 3,
  expiration_date: "",
  description: "Dos médicos en la misma ciudad pueden dar diagnósticos diferentes a pacientes idénticos; dos jueces pueden dictar sentencias distintas ante delitos similares; nosotros mismos podemos decidir una cosa u otra según sea por la mañana o por la tarde, o según se acerque o no la hora de comer. Estos son ejemplos de ruido: el sesgo que conlleva variabilidad en juicios que deberían ser iguales. El ruido está presente en todas las decisiones individuales y colectivas, y produce errores en innumerables terrenos, desde la medicina hasta la economía, pasando por el derecho, la sanidad, la protección infantil y la contratación. Además, también nos importuna e influye a la hora de tomar muchas de nuestras decisiones cotidianas.",
  user_id: 1
)
photo = URI.open("https://www.crisol.com.pe/media/catalog/product/cache/f6d2c62455a42b0d712f6c919e880845/9/7/9788418006364_7pzfvuwymoeebueb.jpg")
product100.photos.attach(io: photo, filename: "product100.png", content_type: "image/png")
product100.save
puts "producto = Product 1 - category 5 creada"

puts "creando producto = Product 2 - category 5"
product101 = Product.new(
  category_id: 5,
  name: "La mirada quieta",
  original_price: 70,
  discount: 10,
  price: 60,
  stock: 1,
  expiration_date: "",
  description: "Benito Pérez Galdós es un autor esencial en la literatura española contemporánea. En este ensayo, a partir del análisis de sus novelas, de sus obras teatrales y de los Episodios nacionales, Mario Vargas Llosa crea un perfil completo, personal y sugerente del escritor español. Nadie como el Nobel peruano es capaz de leer de manera tan sagaz y con tanta libertad y pasión la obra de un creador.",
  user_id: 2
)
photo = URI.open("https://www.crisol.com.pe/media/catalog/product/cache/f6d2c62455a42b0d712f6c919e880845/9/7/9789877388862.jpg")
product101.photos.attach(io: photo, filename: "product101.png", content_type: "image/png")
product101.save
puts "producto = Product 2 - category 5 creada"

puts "creando producto = Product 3 - category 5"
product102 = Product.new(
  category_id: 5,
  name: "Cómo evitar la próxima pandemia",
  original_price: 80,
  discount: 10,
  price: 70,
  stock: 3,
  expiration_date: "",
  description: "Bill Gates cree que la respuesta es sí, y en este libro explica de un modo claro y convincente qué deberíamos haber aprendido de la COVID-19 y qué podemos hacer cada uno de nosotros para evitar un desastre parecido.",
  user_id: 1
)
photo = URI.open("https://www.crisol.com.pe/media/catalog/product/cache/f6d2c62455a42b0d712f6c919e880845/9/7/9786124269264_mzguyymddvid8fkk.jpg")
product102.photos.attach(io: photo, filename: "product102.png", content_type: "image/png")
product102.save
puts "producto = Product 3 - category 5 creada"

puts "creando producto = Product 4 - category 5"
product103 = Product.new(
  category_id: 5,
  name: "Yo vengo a ofrecer mi corazón",
  original_price: 90,
  discount: 10,
  price: 80,
  stock: 5,
  expiration_date: "",
  description: "Yo vengo a ofrecer mi corazón es un recorrido por la vida y obra de Susana Baca contada por su propia protagonista. Se trata de las memorias iniciales de los primeros cincuenta años de una artista que ha llevado su voz - y a través de ella, la cultura peruana - a paísesy escenarios donde nunca había sonado un cajón o un landó.",
  user_id: 2
)
photo = URI.open("https://www.crisol.com.pe/media/catalog/product/cache/f6d2c62455a42b0d712f6c919e880845/9/7/9786124269271.jpg")
product103.photos.attach(io: photo, filename: "product103.png", content_type: "image/png")
product103.save
puts "producto = Product 4 - category 5 creada"

puts "creando producto = Product 5 - category 5"
product104 = Product.new(
  category_id: 5,
  name: "¿Ahorrar o gastar?",
  original_price: 40,
  discount: 10,
  price: 30,
  stock: 2,
  expiration_date: "",
  description: "El dinero no da la felicidad, pero evita muchos momentos infelices. Por ello, ante el dilema financiero: ¿ahorrar o gastar?, Walter Eyzaguirre sabe que aprender a manejar el dinero no es una opción, sino una necesidad para conseguir tu mayor bienestar. Concebido como un ameno y accesible manual de educación financiera, este libro problematiza los prejuicios sobre el dinero para luego abordar, mediante la estrategia del mindfulness, nociones como el equilibrio económico, el propósito del ahorro, las bondades del presupuesto, el valor del crédito, las ventajas de invertir y la racionalidad de los emprendimientos empresariales.",
  user_id: 1
)
photo = URI.open("https://www.crisol.com.pe/media/catalog/product/cache/f6d2c62455a42b0d712f6c919e880845/9/7/9786124275234_0hapfcxpsrdmzzzn.jpg")
product104.photos.attach(io: photo, filename: "product104.png", content_type: "image/png")
product104.save
puts "producto = Product 5 - category 5 creada"

puts "creando producto = Product 6 - category 5"
product105 = Product.new(
  category_id: 5,
  name: "El Tao de Warren Buffett",
  original_price: 30,
  discount: 10,
  price: 20,
  stock: 7,
  expiration_date: "",
  description: "Dedicación, integridad y sentido común son algunos de los valores que Warren Buffett ha destacado como esenciales en su exitosa carrera como inversor. Reunidos por su círculo cercano en un único libro a través de conversaciones personales, reuniones sociales y entrevistas, los aforismos de Buffett no sólo han instruido a sus discípulos en la dirección empresarial, sino también en la disciplina, la virtud de la paciencia y el desarrollo personal. El tao de Warren Buffett es una guía esencial que inspira a sus lectores, contribuye a agudizar la mente, ayuda a tomar las decisiones acertadas tanto en la vida personal como profesional y ofrece estrategias prácticas que serán de enorme utilidad para todos los inversores, sean grandes o pequeños.",
  user_id: 2
)
photo = URI.open("https://www.crisol.com.pe/media/catalog/product/cache/f6d2c62455a42b0d712f6c919e880845/9/7/9788413440545_ynh9k8wqda3hj3u3.jpg")
product105.photos.attach(io: photo, filename: "product105.png", content_type: "image/png")
product105.save
puts "producto = Product 6 - category 5 creada"


puts "creando producto = Product 1 - category 6"
product106 = Product.new(
  category_id: 6,
  name: "Gran Castillo de Fiesta",
  original_price: 200,
  discount: 10,
  price: 180,
  stock: 2,
  expiration_date: "",
  description: "Castillo de muñecas",
  user_id: 1
)
photo = URI.open("https://wongfood.vtexassets.com/arquivos/ids/486144-800-auto?v=637701791771900000&width=800&height=auto&aspect=true")
product106.photos.attach(io: photo, filename: "product106.png", content_type: "image/png")
product106.save
puts "producto = Product 1 - category 6 creado"

puts "creando producto = Product 2 - category 6"
product120 = Product.new(
  category_id: 6,
  name: "Juego de Madera Little Tikes",
  original_price: 200,
  discount: 20,
  price: 180,
  stock: 4,
  expiration_date: "",
  description: "Restaurante Drive Thru 40 Accesorios",
  user_id: 2
)
photo = URI.open("https://wongfood.vtexassets.com/arquivos/ids/489012-800-auto?v=637704454383630000&width=800&height=auto&aspect=true")
product120.photos.attach(io: photo, filename: "product120.png", content_type: "image/png")
product120.save
puts "producto = Product 2 - category 6 creado"

puts "creando producto = Product 3 - category 6"
product107 = Product.new(
  category_id: 6,
  name: "Figura de Acción Transformers Cyberverse 1 Step Surtido",
  original_price: 80,
  discount: 10,
  price: 70,
  stock: 2,
  expiration_date: "",
  description: "Convierte la Figura de Acción para activar su movimiento de ataque distintivo ",
  user_id: 1
)
photo = URI.open("https://wongfood.vtexassets.com/arquivos/ids/564871-800-auto?v=637938933009670000&width=800&height=auto&aspect=true")
product107.photos.attach(io: photo, filename: "product107.png", content_type: "image/png")
product107.save
puts "producto = Product 3 - category 6 creado"

puts "creando producto = Product 4 - category 6"
product108 = Product.new(
  category_id: 6,
  name: "Lanzador de Dardos Nerf Elite 2.0 Prospecto QS-4",
  original_price: 50,
  discount: 10,
  price: 40,
  stock: 6,
  expiration_date: "",
  description: "Lanzador de dardos con mira telescópica",
  user_id: 2
)
photo = URI.open("https://wongfood.vtexassets.com/arquivos/ids/549222-800-auto?v=637897116105270000&width=800&height=auto&aspect=true")
product108.photos.attach(io: photo, filename: "product108.png", content_type: "image/png")
product108.save
puts "producto = Product 4 - category 6 creado"

puts "creando producto = Product 5 - category 6"

product109 = Product.new(
  category_id: 6,
  name: "Muñeco Bebé Aquamerito Aquariana",
  original_price: 40,
  discount: 20,
  price: 20,
  stock: 1,
  expiration_date: "",
  description: "Mete el huevo al agua para ver nacer a tu mascota",
  user_id: 1
)
photo = URI.open("https://wongfood.vtexassets.com/arquivos/ids/478331-800-auto?v=637695203745970000&width=800&height=auto&aspect=true")
product109.photos.attach(io: photo, filename: "product109.png", content_type: "image/png")
product109.save
puts "producto = Product 5 - category 6 creado"

puts "creando producto = Product 6 - category 6"
product110 = Product.create(
  category_id: 6,
  name: "Juguete Preescolar Fisher Price Lil Gamer Mis Primeras Palabras",
  original_price: 50,
  discount: 10,
  price: 40,
  stock: 7,
  expiration_date: "",
  description: "Más de 60 canciones, sonidos, tonos y frases",
  user_id: 2
)
photo = URI.open("https://wongfood.vtexassets.com/arquivos/ids/409332-800-auto?v=637485106106700000&width=800&height=auto&aspect=true")
product110.photos.attach(io: photo, filename: "product110.png", content_type: "image/png")
product110.save
puts "producto = Product 1 - category 6 creado"


# ORDENES

puts "------------------------------------------------------------------------------------------------"
puts "creando Order 1"
Order.create!(
  first_name: "Raul", last_name: "Rivera", dni: "10567810", address: "Esteban tuerten 360",
  city: "San juan de miraflores", email: "raulrivera@gmail.com", delivery_date: "2022/10/12",
  delivery_type: "Envío a casa", payment: "MasterCard"
)
puts "Order 1 creada"

puts "creando Order 2"
Order.create!(
  first_name: "Andres", last_name: "Fonseca", dni: "23452345", address: "Av Proceres 1045",
  city: "Surco", email: "afonseca@gmail.com", delivery_date: "2022/10/02",
  delivery_type: "Recojo en Tienda", payment: "Visa"
)
puts "Order 2 creada"

puts "creando Order 3"
Order.create!(
  first_name: "Jonathan", last_name: "Black", dni: "45342312", address: "Dos de mayo 645",
  city: "San Isidro", email: "joblack@gmail.com", delivery_date: "2022/09/10",
  delivery_type: "Envío a casa", payment: "Mastercard"
)
puts "Order 3 creada"

puts "creando Order 4"
Order.create!(
  first_name: "Fernanda", last_name: "Polanco", dni: "76556776", address: "Av. El Golf 755",
  city: "surco", email: "fernandapo@gmail.com", delivery_date: "2022/01/15",
  delivery_type: "Envío a casa", payment: "Mastercard"
)
puts "Order 4 creada"

puts "creando Order 5"
Order.create!(
  first_name: "Florencia", last_name: "Jimenez", dni: "64547235", address: "Los alamos 645",
  city: "San Isidro", email: "joblack@gmail.com", delivery_date: "2022/09/10",
  delivery_type: "Envío a casa", payment: "Amex"
)
puts "Order 5 creada"

puts "creando Order 6"
Order.create!(
  first_name: "Carmen", last_name: "Smith", dni: "68785940", address: "Huamanga 423",
  city: "Magdalena", email: "carsmith@gmail.com", delivery_date: "2022/10/10",
  delivery_type: "Recojo en Tienda", payment: "Visa"
)
puts "Order 6 creada"

puts "creando Order 7"
orden1 = Order.create!(
  first_name: "Demian", last_name: "Santos", dni: "98574839", address: "Av Argentina 3549",
  city: "Callao", email: "Santos_demian@gmail.com", delivery_date: "2022/09/13",
  delivery_type: "Envío a casa", payment: "Mastercard"
)
puts "Order 7 creada"
puts "------------------------------------------------------------------------------------------------"

puts "------------------------------------------------------------------------------------------------"
puts "Line-Item 1"
LineItem.create!(product_id: product108.id, order_id: orden1.id, quantity: 2, price: 46.8)
puts "Line-Item 1 creada"
puts "Line-Item 2"
LineItem.create!(product_id: product109.id, order_id: orden1.id, quantity: 10, price: 320)
puts "Line-Item 2 creada"
puts "Line-Item 3"
LineItem.create!(product_id: product110.id, order_id: orden1.id, quantity: 1, price: 17.1)
puts "Line-Item 3 creada"
