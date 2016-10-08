# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161006015034) do

  create_table "artista", force: :cascade do |t|
    t.string   "no_artista"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string   "no_artista"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cancions", force: :cascade do |t|
    t.integer  "artista_id"
    t.string   "no_cancion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cancions", ["artista_id"], name: "index_cancions_on_artista_id"

  create_table "eventos", force: :cascade do |t|
    t.text     "no_evento"
    t.integer  "Local_id"
    t.datetime "fe_fecha_evento"
    t.integer  "qt_capacidad"
    t.text     "tx_descripcion_evento"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "eventos", ["Local_id"], name: "index_eventos_on_Local_id"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.boolean  "active"
    t.integer  "tipo_producto_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "items", ["tipo_producto_id"], name: "index_items_on_tipo_producto_id"

  create_table "locals", force: :cascade do |t|
    t.text     "no_local"
    t.text     "tx_direccion"
    t.string   "tx_telefono"
    t.text     "tx_correo"
    t.text     "tx_descripcion"
    t.string   "co_administrador"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.decimal  "unit_price",  precision: 12, scale: 3
    t.integer  "quantity"
    t.decimal  "total_price", precision: 12, scale: 3
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"
  add_index "order_items", ["product_id"], name: "index_order_items_on_product_id"

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "subtotal",        precision: 12, scale: 3
    t.decimal  "tax",             precision: 12, scale: 3
    t.decimal  "shipping",        precision: 12, scale: 3
    t.decimal  "total",           precision: 12, scale: 3
    t.integer  "order_status_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "orders", ["order_status_id"], name: "index_orders_on_order_status_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price",            precision: 12, scale: 3
    t.boolean  "active"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "tipoproductos_id"
  end

  add_index "products", ["tipoproductos_id"], name: "index_products_on_tipoproductos_id"

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "born_at"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "salas", force: :cascade do |t|
    t.integer  "Local_id"
    t.text     "no_sala"
    t.integer  "qt_capacidad"
    t.text     "tx_sala_descripcion"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.boolean  "fl_disponible"
  end

  add_index "salas", ["Local_id"], name: "index_salas_on_Local_id"

  create_table "songs", force: :cascade do |t|
    t.integer  "artist_id"
    t.string   "no_cancion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id"

  create_table "tipo_productos", force: :cascade do |t|
    t.text     "no_tipo_producto"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tipo_usuarios", force: :cascade do |t|
    t.string   "no_tipo_usuario"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "usuarios", force: :cascade do |t|
    t.text     "no_usuario"
    t.integer  "TipoUsuario_id"
    t.text     "no_apellido_paterno"
    t.text     "no_apellido_materno"
    t.string   "no_dni"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "usuarios", ["TipoUsuario_id"], name: "index_usuarios_on_TipoUsuario_id"

end
