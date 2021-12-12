require 'test_helper'

class BodysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bodys_index_url
    assert_response :success
  end

  test "should get new" do
    get bodys_new_url
    assert_response :success
  end

  test "should get create" do
    get bodys_create_url
    assert_response :success
  end

  test "should get show" do
    get bodys_show_url
    assert_response :success
  end

  test "should get edit" do
    get bodys_edit_url
    assert_response :success
  end

  test "should get update" do
    get bodys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bodys_destroy_url
    assert_response :success
  end

end
