require "test_helper"

class RecommendationsControllerTest < ActionDispatch::IntegrationTest
  def setup
    post login_url, params: { username: users(:one).username, password: "password" }
  end

  # Skip this test as it requires external API access
  # TODO: Add proper mocking for the Anthropic API call
  test "should get index" do
    skip "Test requires Anthropic API mocking"
    get recommendations_url
    assert_response :success
  end
end
