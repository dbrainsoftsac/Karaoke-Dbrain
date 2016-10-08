class AddAmountToItems < ActiveRecord::Migration
  def change
  	    add_column :Salas, :fl_disponible, :boolean

  end
end
