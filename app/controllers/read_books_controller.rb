class ReadBooksController < ApplicationController
  def index
    @books = ReadBook.all
  end

  def show
    @read_book = ReadBook.find(params[:id])
  end

  # Rails will automatically render app/views/read_books/new.html.erb :)
  def new
    @read_book = ReadBook.new
  end

  def create
    @read_book = ReadBook.new(read_book_params)
    if @read_book.save
      # redirect somewhere on success
      redirect_to read_books_path
    else 
      # render the form again on failure
    end
  end
end

private

def read_book_params
  params.require(:read_book).permit(:title, :author, :date_published, :description, :rating, :date_finished)
end
