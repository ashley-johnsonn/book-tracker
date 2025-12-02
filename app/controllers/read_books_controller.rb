class ReadBooksController < ApplicationController
  def index
    @books = ReadBook.all
  end

  def show
    @read_book = ReadBook.find(params[:id])
  end

  # Rails will automatically render app/views/read_books/new.html.erb :)
  def new
    @read_book = ReadBook.new(
      title: params[:title],
      author: params[:author],
      description: params[:description],
      year_published: params[:year_published],
      cover_image_url: params[:cover_image_url]
    )
  end

  def edit
    @read_book = ReadBook.find(params[:id])
    puts "@read_book = #{@read_book.inspect}"
  end

  def update
    @read_book = ReadBook.find(params[:id])
    if @read_book.update(read_book_params)
      redirect_to read_book_path(@read_book)
    else
      render :edit
    end
  end

  def create
    @read_book = ReadBook.new(read_book_params)
    if @read_book.save
      # redirect somewhere on success
      redirect_to read_books_path
    else 
      # render the form again on failure
      render :new
    end
  end

  def destroy
    @read_book = ReadBook.find(params[:id])
    @read_book.destroy
    redirect_to read_books_path
  end

end

private

def read_book_params
  params.require(:read_book).permit(:title, :author, :year_published, :description, :rating, :date_finished, :cover_image_url)
end
