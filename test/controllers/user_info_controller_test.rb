require 'test_helper'

class UserInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get user_info_welcome_url
    assert_response :success
  end

end
