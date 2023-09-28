
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
    start_datetime: "Sun, 01 Jan 2012 00:00:00 +0300",
    flight_time: "1:20",
  }
])

Airport.last.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "TX"),
    arriving_flight: Airport.find_by(code: "LA"),
    start_datetime: "Sun, 01 Jan 2012 00:00:00 +0300",
    flight_time: "1:20",
  }
])

Airport.second.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "SFO"),
    arriving_flight: Airport.find_by(code: "TX"),
    start_datetime: "Sun, 01 Jan 2012 00:00:00 +0300",
    flight_time: "1:20",
  }
])

Airport.third.departing_flights.create!([
  {
    departing_flight: Airport.find_by(code: "LA"),
    arriving_flight: Airport.find_by(code: "NYC"),
    start_datetime: "Sun, 01 Jan 2012 00:00:00 +0300",
    flight_time: "1:20",
  }
])
