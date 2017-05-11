require 'test_helper'

class AdvetismentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advetisments_index_url
    assert_response :success
  end

  test "should get new" do
    get advetisments_new_url
    assert_response :success
  end

  test "should get edit" do
    get advetisments_edit_url
    assert_response :success
  end

  test "should get show" do
    get advetisments_show_url
    assert_response :success
  end

end
