require 'test_helper'

class RacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get races_index_url
    assert_response :success
  end

  test "should get new" do
    get races_new_url
    assert_response :success
  end

  test "should get edit" do
    get races_edit_url
    assert_response :success
  end

  test "should get show" do
    get races_show_url
    assert_response :success
  end

end
