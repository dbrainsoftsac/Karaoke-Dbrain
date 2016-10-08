class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.belongs_to :Local, index: true, foreign_key: true
      t.text :no_sala
      t.integer :qt_capacidad
      t.text :tx_sala_descripcion

      t.timestamps null: false
    end
  end
end
