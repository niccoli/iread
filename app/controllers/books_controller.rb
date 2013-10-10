class BooksController < ApplicationController
  before_filter :authorize, only: [:create] #ensures that a user is logged in before they create a new book. See ApplicationController authorize method for complete clarification.

  def index
    @books = Book.all
  end


  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)
    redirect_to books_path
  end

private

  def book_params
    params.require(:book).permit(:title)
  end
end
