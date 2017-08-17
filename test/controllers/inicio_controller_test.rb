require 'test_helper'

class InicioControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get inicio_inicio_url
    assert_response :success
  end

end
