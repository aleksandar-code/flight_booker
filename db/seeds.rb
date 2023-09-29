
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
    start_datetime: "Fri 29 Sep 2023 17:15",
    flight_time: "1:15",
  }
])

Airport.last.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "TX"),
    arriving_flight: Airport.find_by(code: "LA"),
    start_datetime: "Mon 25 Sep 2023 11:00",
    flight_time: "2:00",
  }
])

Airport.second.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "SFO"),
    arriving_flight: Airport.find_by(code: "TX"),
    start_datetime: "Wed 20 Sep 2023 01:30",
    flight_time: "1:00",
  }
])

Airport.third.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "LA"),
    arriving_flight: Airport.find_by(code: "NYC"),
    start_datetime: "Sat 30 Sep 2023 00:30",
    flight_time: "1:30",
  }
])
