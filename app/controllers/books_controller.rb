class BooksController < ApplicationController
  def index
    @books = Book.all 
  end

  def show
    @book = find_book
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params, session[:user_id])
    byebug
    redirect_to books_path
  end

  def edit
    @book = find_book
  end

  def update
    @book = find_book
    @book.update(book_params)
    redirect_to books_path
  end


  def delete
  end

  private 

  def find_book 
    return Book.find(params[:id])
  end

  def book_params
    book_params = params.require(:book).permit(:title, :description)
  end


end
