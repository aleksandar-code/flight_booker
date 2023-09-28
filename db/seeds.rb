
Airport.destroy_all

Airport.create!([{
  code: "NYC",
},
{
  code: "SFO",
},
{
  code: "LA",
},
{
  code: "TX",
}
])

Airport.first.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "NYC"),
    arriving_flight: Airport.find_by(code: "SFO"),
    start_datetime: "2023-09-29 17:15:00 +0200",
    flight_time: "1:15",
  }
])

Airport.last.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "TX"),
    arriving_flight: Airport.find_by(code: "LA"),
    start_datetime: "2023-09-25 12:00:00 +0200",
    flight_time: "2:00",
  }
])

Airport.second.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "SFO"),
    arriving_flight: Airport.find_by(code: "TX"),
    start_datetime: "2023-09-20 01:30:00 +0200",
    flight_time: "1:00",
  }
])

Airport.third.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "LA"),
    arriving_flight: Airport.find_by(code: "NYC"),
    start_datetime: "2023-09-29 00:30:00 +0200",
    flight_time: "1:30",
  }
])
