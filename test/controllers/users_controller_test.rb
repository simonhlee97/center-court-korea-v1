require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get myprofile" do
    get users_myprofile_url
    assert_response :success
  end
end
