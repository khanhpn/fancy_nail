require 'test_helper'

class VideosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get videos_index_url
    assert_response :success
  end

  test "should get new" do
    get videos_new_url
    assert_response :success
  end

  test "should get edit" do
    get videos_edit_url
    assert_response :success
  end

  test "should get show" do
    get videos_show_url
    assert_response :success
  end

end
