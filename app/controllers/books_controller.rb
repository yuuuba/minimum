class BooksController < ApplicationController
  def index
    @books = Book.all 
  end

  def show
  end

  def new
    @book = Book.new #空のBookモデルクラスのインスタンス作成
  end

  def create
    @book = Book.create(book_params)
    redirect_to bookshelf_path
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :score)#改竄されて許可していない内容送られるのを防ぐためprivate
  end

end
