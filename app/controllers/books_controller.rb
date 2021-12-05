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
    @book = Book.create(:name, :price)
  end
  
  private
  def book_params
    binding.pry
    params.require(:book).permit(:name, :price)
  end

end
