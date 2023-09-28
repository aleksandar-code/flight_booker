require "test_helper"

class AirportControllerTest < ActionDispatch::IntegrationTest
  test "should get Flight" do
    get airport_Flight_url
    assert_response :success
  end
end
