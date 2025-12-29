require "test_helper"

class ReadBooksControllerTest < ActionDispatch::IntegrationTest
  def setup
    post login_url, params: { username: users(:one).username, password: "password" }
  end

  test "should get index" do
    get read_books_url
    assert_response :success
  end

  test "should get show" do
    get read_book_url(read_books(:one))
    assert_response :success
  end

  test "should get new" do
    get new_read_book_url
    assert_response :success
  end

  test "should get create" do
    post read_books_url, params: { read_book: { title: "Test Book", author: "Test Author", status: "finished" } }
    assert_response :redirect
  end
end
