class BooksController < ApplicationController

  before_action :logged_in?

  def index
    if params[:user_id]
      byebug
      @books = User.find_by_id(params[:user_id]).books

    else
      @books = Book.all.sort_desc
    end

  end

  def show
    @book = find_book
  end

  def new
    @book = Book.new
  end

  def create
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
    book_params = params.require(:book).permit(:title, :description)
  end

  def logged_in?
    return head(:forbidden) unless session.include? :user_id
  end


end
