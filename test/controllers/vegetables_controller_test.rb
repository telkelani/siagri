require 'test_helper'

class VegetablesControllerTest < ActionDispatch::IntegrationTest
  test "should get veg" do
    get vegetables_veg_url
    assert_response :success
  end

end
