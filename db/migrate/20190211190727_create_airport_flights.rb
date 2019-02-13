class CreateAirportFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :airport_flights do |t|
      t.integer :flight_id
      t.integer :airport_id

      t.timestamps
    end
  end
end
