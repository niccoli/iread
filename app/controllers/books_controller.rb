class BooksController < ApplicationController
  before_filter :authorize, only: [:create] #ensures that a user is logged in before they create a new book. See ApplicationController authorize method for complete clarification.

  def index
    @books = Book.all
  end


  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    @book.user_id = current_user.id
    @books = Book.all
    if @book.save
      flash[:notice] = "Your book has been added to your shelf."
      redirect_to books_path
    else
      render :new
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "You have deleted this book from your shelf."
  end

private

  def book_params
    params.require(:book).permit(:title)
  end
end
