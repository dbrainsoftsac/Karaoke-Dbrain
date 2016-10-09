class AddTableReserva < ActiveRecord::Migration
  def change

  	add_reference :reservations, :locals, index: true
    add_foreign_key :reservations, :locals


  	add_reference :reservations, :salas, index: true
    add_foreign_key :reservations, :salas

  end
end
