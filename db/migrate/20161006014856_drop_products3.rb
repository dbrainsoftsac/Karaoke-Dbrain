class DropProducts3 < ActiveRecord::Migration
  def change
drop_table :items
  end
end
