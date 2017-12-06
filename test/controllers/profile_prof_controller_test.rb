require 'test_helper'

class ProfileProfControllerTest < ActionDispatch::IntegrationTest
  test "should get resultados" do
    get profile_prof_resultados_url
    assert_response :success
  end

end
