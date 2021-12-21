require 'test_helper'

class TrainingDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get training_details_index_url
    assert_response :success
  end

  test "should get new" do
    get training_details_new_url
    assert_response :success
  end

  test "should get create" do
    get training_details_create_url
    assert_response :success
  end

  test "should get show" do
    get training_details_show_url
    assert_response :success
  end

  test "should get edit" do
    get training_details_edit_url
    assert_response :success
  end

  test "should get update" do
    get training_details_update_url
    assert_response :success
  end

  test "should get destroy" do
    get training_details_destroy_url
    assert_response :success
  end

end
