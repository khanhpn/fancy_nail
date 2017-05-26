require 'test_helper'

class SolgansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get solgans_index_url
    assert_response :success
  end

  test "should get edit" do
    get solgans_edit_url
    assert_response :success
  end

  test "should get new" do
    get solgans_new_url
    assert_response :success
  end

  test "should get show" do
    get solgans_show_url
    assert_response :success
  end

end
