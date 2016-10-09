class DeleteTableTableName < ActiveRecord::Migration
   
  	def up
    drop_table :products

  end
end
