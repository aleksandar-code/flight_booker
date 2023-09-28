class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :departure_airport
      t.integer :arrival_airport
      t.string :start_datetime
      t.string :flight_time

      t.timestamps
    end
  end
end
