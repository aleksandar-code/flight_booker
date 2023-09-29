class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]

  # GET /flights or /flights.json
  def index
    @flights = Flight.all
    @airports = Airport.all

    key = "%#{params[:flight_date]}%"
    key2 = "%#{params[:departure_airport]}%"
    key3 = "%#{params[:arrival_airport]}%"
    @result = Flight.where("start_datetime LIKE ?", key)
    @result = @result.where("departure_airport LIKE ?", key2)
    @result = @result.where("arrival_airport LIKE ?", key3)

  end

  # GET /flights/1 or /flights/1.json
  def show
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_params
      params.require(:flight).permit(:departure_airport, :arrival_airport, :start_datetime, :flight_time)
    end
end
