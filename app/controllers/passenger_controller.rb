class PassengerController < ApplicationController
  def booking_params
    params.require(:passenger).permit(:booking_id)
  end
end
