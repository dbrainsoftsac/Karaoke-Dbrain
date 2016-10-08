class CreateArtista < ActiveRecord::Migration
  def change
    create_table :artista do |t|
      t.string :no_artista

      t.timestamps null: false
    end
  end
end
