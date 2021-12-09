class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update ]

  def index
    @books = Book.all
  end

  def show
  end
  
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    
    if @book.save
      redirect_to books_path
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      render books_path
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :price)
  end

end
