class DropProducts2 < ActiveRecord::Migration
  def change
drop_table :items
  end
end
