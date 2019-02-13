class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :city
      t.string :state
      t.string :state_code
      t.string :airport_code
      t.string :airport_name

      t.timestamps
    end
  end
end
