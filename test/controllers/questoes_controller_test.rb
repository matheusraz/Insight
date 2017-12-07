require 'test_helper'

class QuestoesControllerTest < ActionDispatch::IntegrationTest
  test "should get questoes" do
    get questoes_questoes_url
    assert_response :success
  end

end
