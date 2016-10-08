class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.text :no_evento
      t.belongs_to :Local, index: true, foreign_key: true
      t.datetime :fe_fecha_evento
      t.integer :qt_capacidad
      t.text :tx_descripcion_evento

      t.timestamps null: false
    end
  end
end
