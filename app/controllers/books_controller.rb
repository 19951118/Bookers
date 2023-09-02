class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      flash.now[:notice] = "errors prohibited this book from being saved:"
      render :index
    end
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def book_parms
    params.require(:book).permit(:title, :body)
  end
end
