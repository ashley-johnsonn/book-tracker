require "test_helper"

class ReadBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get read_books_index_url
    assert_response :success
  end

  test "should get show" do
    get read_books_show_url
    assert_response :success
  end

  test "should get new" do
    get read_books_new_url
    assert_response :success
  end

  test "should get create" do
    get read_books_create_url
    assert_response :success
  end
end
