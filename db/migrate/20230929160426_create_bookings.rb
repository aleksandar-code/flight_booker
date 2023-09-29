class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :tickets
      t.integer :flight_id
      t.string :flight_time
      t.string :start_datetime
      t.integer :arrival_airport 
      t.integer :departure_airport
      t.string :passengers
      t.timestamps
    end
  end
end
