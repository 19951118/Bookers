class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      flash.now[:alert] = "errors prohibited this book from being saved:"
      render :edit
    end
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    render :edit
  end
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
