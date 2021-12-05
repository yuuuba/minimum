class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    redirect_to books_path
  end
  
  def edit
    @book = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:name, :price)
  end

end
