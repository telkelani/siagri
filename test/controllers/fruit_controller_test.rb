require 'test_helper'

class FruitControllerTest < ActionDispatch::IntegrationTest
  test "should get fruit" do
    get fruit_fruit_url
    assert_response :success
  end

end
