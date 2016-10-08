OrderStatus.delete_all
Order.delete_all
OrderItem.delete_all

TipoProducto.delete_all
TipoProducto.create! id: 1, no_tipo_producto: "Piqueos"
TipoProducto.create! id: 2, no_tipo_producto: "Piqueos criollos" 
TipoProducto.create! id: 3, no_tipo_producto: "Bebidas espirituosas"
TipoProducto.create! id: 4, no_tipo_producto: "Whiskys"
TipoProducto.create! id: 5, no_tipo_producto: "Cervezas"
TipoProducto.create! id: 6, no_tipo_producto: "Pizzas"

# Product.delete_all
# Product.create! id: 1, name: "Whisky Etiqueta roja", price: 150.49, active: true, tipoproducto_id: 1
# Product.create! id: 2, name: "Appleton", price: 220.29, active: true , tipoproducto_id: 3
# Product.create! id: 3, name: "Piqueo 3 sabores", price: 21.99, active: true, tipoproducto_id: 5
# Product.create! id: 4, name: "Cerveza Qusqueña", price: 15.99, active: true, tipoproducto_id: 5
# Product.create! id: 5, name: "Cerveza Pilsen", price: 15.99, active: true, tipoproducto_id: 5
# Product.create! id: 6, name: "Cerveza Heineken", price: 18.99, active: true, tipoproducto_id: 5
# Product.create! id: 7, name: "Cerveza Corona", price: 20.99, active: true, tipoproducto_id: 5
# Product.create! id: 8, name: "Cerveza Stella Artois", price: 25.99, active: true, tipoproducto_id: 5
# Product.create! id: 9, name: "Pizza Grande", price: 39.99, active: true, tipoproducto_id: 6
# Product.create! id: 10, name: "Tequeños", price: 19.99, active: true, tipoproducto_id: 1
# Product.create! id: 11, name: "Hot Wings", price: 20.99, active: true, tipoproducto_id: 1
# Product.create! id: 12, name: "Nachos", price: 14.99, active: true, tipoproducto_id: 1
# Product.create! id: 13, name: "Causitas rellenas", price: 19.99, active: true, tipoproducto_id: 2
# Product.create! id: 14, name: "Tequeños de lomo saltado", price: 19.99, active: true, tipoproducto_id: 2

Item.delete_all
Item.create! id: 1, name: "Whisky Etiqueta roja", price: 150.49, active: true, tipo_producto_id: 1
Item.create! id: 2, name: "Appleton", price: 220.29, active: true , tipo_producto_id: 3
Item.create! id: 3, name: "Piqueo 3 sabores", price: 21.99, active: true, tipo_producto_id: 5
Item.create! id: 4, name: "Cerveza Qusqueña", price: 15.99, active: true, tipo_producto_id: 5
Item.create! id: 5, name: "Cerveza Pilsen", price: 15.99, active: true, tipo_producto_id: 5
Item.create! id: 6, name: "Cerveza Heineken", price: 18.99, active: true, tipo_producto_id: 5
Item.create! id: 7, name: "Cerveza Corona", price: 20.99, active: true, tipo_producto_id: 5
Item.create! id: 8, name: "Cerveza Stella Artois", price: 25.99, active: true, tipo_producto_id: 5
Item.create! id: 9, name: "Pizza Grande", price: 39.99, active: true, tipo_producto_id: 6
Item.create! id: 10, name: "Tequeños", price: 19.99, active: true, tipo_producto_id: 1
Item.create! id: 11, name: "Hot Wings", price: 20.99, active: true, tipo_producto_id: 1
Item.create! id: 12, name: "Nachos", price: 14.99, active: true, tipo_producto_id: 1
Item.create! id: 13, name: "Causitas rellenas", price: 19.99, active: true, tipo_producto_id: 2
Item.create! id: 14, name: "Empanada de lomo saltado", price: 19.99, active: true, tipo_producto_id: 2
Item.create! id: 15, name: "Ronda criolla", price: 19.99, active: true, tipo_producto_id: 2
Item.create! id: 16, name: "Piqueo de pulpo", price: 21.99, active: true, tipo_producto_id: 2

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"


TipoUsuario.delete_all
TipoUsuario.create! id: 1, no_tipo_usuario: "Usuario"
TipoUsuario.create! id: 2, no_tipo_usuario: "Administrador"
TipoUsuario.create! id: 3, no_tipo_usuario: "Mesero"
TipoUsuario.create! id: 4, no_tipo_usuario: "TI"


Artist.delete_all
Artist.create! id: 1, no_artista: "Enrique Iglesias" 
Artist.create! id: 2, no_artista: "Marc Anthony" 
Artist.create! id: 3, no_artista: "Nicky Jam" 
Artist.create! id: 4, no_artista: "Joey Montana" 

Song.delete_all
Song.create! id: 1, artist_id: 1, no_cancion: "Bailando" 
Song.create! id: 2, artist_id: 1, no_cancion: "Duele el corazón" 
Song.create! id: 3, artist_id: 2, no_cancion: "La Gozadera" 
Song.create! id: 4, artist_id: 3, no_cancion: "El perdón" 
Song.create! id: 5, artist_id: 4, no_cancion: "Picky" 

Local.delete.all
Local.create! id: 1, no_local: "Karaoke hermanos I", tx_direccion: "Av Del Aire #838383", tx_telefono:"8888787", tx_correo: "local1@kraoq.com", tx_descripcion:"Primer local", co_administrador:""
Local.create! id: 2, no_local: "Karaoke hermanos II", tx_direccion: "Av Salaverry #838383", tx_telefono:"8838383", tx_correo: "local2@kraoq.com", tx_descripcion:"Primer local", co_administrador:""