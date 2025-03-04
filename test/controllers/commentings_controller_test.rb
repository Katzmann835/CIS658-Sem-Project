require "test_helper"

class CommentingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commenting = commentings(:one)
  end

  test "should get index" do
    get commentings_url
    assert_response :success
  end

  test "should get new" do
    get new_commenting_url
    assert_response :success
  end

  test "should create commenting" do
    assert_difference("Commenting.count") do
      post commentings_url, params: { commenting: { main_page_id: @commenting.main_page_id, parent_id: @commenting.parent_id, response: @commenting.response } }
    end

    assert_redirected_to commenting_url(Commenting.last)
  end

  test "should show commenting" do
    get commenting_url(@commenting)
    assert_response :success
  end

  test "should get edit" do
    get edit_commenting_url(@commenting)
    assert_response :success
  end

  test "should update commenting" do
    patch commenting_url(@commenting), params: { commenting: { main_page_id: @commenting.main_page_id, parent_id: @commenting.parent_id, response: @commenting.response } }
    assert_redirected_to commenting_url(@commenting)
  end

  test "should destroy commenting" do
    assert_difference("Commenting.count", -1) do
      delete commenting_url(@commenting)
    end

    assert_redirected_to commentings_url
  end
end
