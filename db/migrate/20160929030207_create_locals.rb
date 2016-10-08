class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.text :no_local
      t.text :tx_direccion
      t.string :tx_telefono
      t.text :tx_correo
      t.text :tx_descripcion
      t.string :co_administrador

      t.timestamps null: false
    end
  end
end
