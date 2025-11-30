class ReadBooksController < ApplicationController
  def index
    @books = ReadBook.all
  end

  def show
  end

  def new
  end

  def create
  end
end
