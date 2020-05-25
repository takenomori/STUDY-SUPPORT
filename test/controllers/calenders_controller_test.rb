require 'test_helper'

class CalendersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calenders_index_url
    assert_response :success
  end

  test "should get new" do
    get calenders_new_url
    assert_response :success
  end

  test "should get show" do
    get calenders_show_url
    assert_response :success
  end

  test "should get edit" do
    get calenders_edit_url
    assert_response :success
  end

end
