require 'test_helper'

class TimeWorkingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get time_workings_index_url
    assert_response :success
  end

end
