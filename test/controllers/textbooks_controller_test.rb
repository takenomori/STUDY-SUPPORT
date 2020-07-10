require 'test_helper'

class TextbooksControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get textbooks_index_url
    assert_response :success
  end

  test 'should get new' do
    get textbooks_new_url
    assert_response :success
  end

  test 'should get show' do
    get textbooks_show_url
    assert_response :success
  end

  test 'should get edit' do
    get textbooks_edit_url
    assert_response :success
  end
end
