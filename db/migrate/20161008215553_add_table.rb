class AddTable < ActiveRecord::Migration
  def change

  	    create_table :products do |t|
       t.string :name
       t.decimal :price
       t.boolean :active
      t.belongs_to :local, index: true, foreign_key: true
       t.belongs_to :tipo_producto, index: true, foreign_key: true
       t.timestamps null: false
    end

  end
end
