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
    puts params
    @book = Book.create(book_params)
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
    return params.require(:book).permit(:title, :description)
  end


end
