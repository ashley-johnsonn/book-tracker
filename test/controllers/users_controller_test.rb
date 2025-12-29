require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_url
    assert_response :success
  end

  test "should get create" do
    post signup_url, params: { user: { name: "Test User", email: "test@example.com", username: "testuser", password: "password", password_confirmation: "password" } }
    assert_response :redirect
  end
end
