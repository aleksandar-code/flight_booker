
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
    start_datetime: "Mon, 01 Jan 2023 10:45:00 +0300",
    flight_time: "1:15",
  }
])

Airport.last.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "TX"),
    arriving_flight: Airport.find_by(code: "LA"),
    start_datetime: "Wed, 03 Jan 2023 04:00:00 +0300",
    flight_time: "2:00",
  }
])

Airport.second.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "SFO"),
    arriving_flight: Airport.find_by(code: "TX"),
    start_datetime: "Fri, 05 Jan 2023 17:00:00 +0300",
    flight_time: "1:00",
  }
])

Airport.third.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "LA"),
    arriving_flight: Airport.find_by(code: "NYC"),
    start_datetime: "Sat, 06 Jan 2023 13:00:00 +0300",
    flight_time: "1:30",
  }
])
