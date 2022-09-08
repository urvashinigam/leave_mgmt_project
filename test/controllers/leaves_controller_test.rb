require "test_helper"

class LeavesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leaves_index_url
    assert_response :success
  end

  test "should get show" do
    get leaves_show_url
    assert_response :success
  end

  test "should get new" do
    get leaves_new_url
    assert_response :success
  end

  test "should get edit" do
    get leaves_edit_url
    assert_response :success
  end
end
