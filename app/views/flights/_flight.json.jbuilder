json.extract! flight, :id, :departure_airport, :arrival_airport, :start_datetime, :flight_time, :created_at, :updated_at
json.url flight_url(flight, format: :json)
