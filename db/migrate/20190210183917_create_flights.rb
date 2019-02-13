class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :departure_city
      t.string :arrival_city
      t.date :departure_date
      t.integer :departure_time
      t.integer :arrival_time
      t.timestamps
    end
  end
end
