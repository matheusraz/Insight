require 'test_helper'

class SimuladosControllerTest < ActionDispatch::IntegrationTest
  test "should get simulados" do
    get simulados_simulados_url
    assert_response :success
  end

end
