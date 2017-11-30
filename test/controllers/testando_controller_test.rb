require 'test_helper'

class TestandoControllerTest < ActionDispatch::IntegrationTest
  test "should get testando" do
    get testando_testando_url
    assert_response :success
  end

end
