class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.text :no_usuario
      t.belongs_to :TipoUsuario, index: true, foreign_key: true
      t.text :no_apellido_paterno
      t.text :no_apellido_materno
      t.string :no_dni
      t.string :email

      t.timestamps null: false
    end
  end
end
