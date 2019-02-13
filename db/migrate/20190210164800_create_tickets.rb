class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :seat_number
      t.integer :customer_id
      t.integer :flight_id

      t.timestamps
    end
  end
end

#seat_number = 10 seats per plane
