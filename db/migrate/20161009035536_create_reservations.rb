class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :reserved_at
      t.integer :seats
      t.integer :status
      t.boolean :waiting_allowed
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
