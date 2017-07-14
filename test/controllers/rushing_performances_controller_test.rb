require 'test_helper'

class RushingPerformancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rushing_performances_index_url
    assert_response :success
  end

end
