class CreateTipoProductos < ActiveRecord::Migration
  def change
    create_table :tipo_productos do |t|
      t.text :no_tipo_producto

      t.timestamps null: false
    end
  end
end
