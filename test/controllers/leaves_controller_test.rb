require "test_helper"

class LeavesControllerTest < ActionDispatch::IntegrationTest
  test "should get leave" do
    get leaves_leave_url
    assert_response :success
  end
end
