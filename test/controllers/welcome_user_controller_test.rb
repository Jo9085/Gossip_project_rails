require "test_helper"

class WelcomeUserControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get welcome_user_show_url
    assert_response :success
  end
end
