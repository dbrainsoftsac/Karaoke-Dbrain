class Products < ActiveRecord::Migration
  def change

	add_reference :products, :tipoproductos, index: true
    add_foreign_key :products, :tipoproductos
    
  end
end
