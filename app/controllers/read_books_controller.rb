class ReadBooksController < ApplicationController
  def index
    @books = ReadBook.all
  end

  def show
  end

  # Rails will automatically render app/views/read_books/new.html.erb :)
  def new
    @read_book = ReadBook.new
  end

  def create
  end
end
