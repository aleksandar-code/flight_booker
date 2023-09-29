class Flight < ApplicationRecord
  belongs_to :departing_flight, class_name: "Airport", foreign_key: "departure_airport"
  belongs_to :arriving_flight, class_name: "Airport", foreign_key: "arrival_airport"
  has_many :passengers, through: :bookings
end
