require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get area_aluno" do
    get profile_area_aluno_url
    assert_response :success
  end

  test "should get simulados" do
    get profile_simulados_url
    assert_response :success
  end

  test "should get resultados" do
    get profile_resultados_url
    assert_response :success
  end

end
