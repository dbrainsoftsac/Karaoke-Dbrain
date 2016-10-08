class CreateCancions < ActiveRecord::Migration
  def change
    create_table :cancions do |t|
      t.references :artista, index: true, foreign_key: true
      t.string :no_cancion

      t.timestamps null: false
    end
  end
end
