class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all.order(:id)
    @book = Book.new
  end

  def new
  end

  def create
    book = Book.new(book_params)
      book.save
      flash[:success] = 'successfully'
      redirect_to book_path(book)
    end

  def edit
    @book = Book.find(params[:id])
  end

  def update
      book = Book.find(params[:id])
      book.update(book_params)
      flash[:success] = 'successfully'
      redirect_to book_path(book)
    end

    def destroy
       book = Book.find(params[:id])
       book.destroy
       redirect_to books_path
     end

  private
  def book_params
      params.require(:book).permit(:title, :body)
  end
end
