class BooksController < ApplicationController

  def index
    @books = Book.all
    @five_star_books =Book.where(rating: 5)
    @four_star_books =Book.where(rating: 4)
    @three_star_books =Book.where(rating: 3)
    @two_star_books =Book.where(rating: 2)
    @one_star_books =Book.where(rating: 1)
  end


  def show
    @book = Book.find(params[:id])
  end


  def new
    @book = Book.new()
  end


  def create
    @book = Book.new(book_params)
    if @book.save
    redirect_to book_path(@book)
    else
      render :new
    end
  end


  def edit
    @book = Book.find(params[:id])
  end


  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book)
  end


  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end


  def best_sellers
  end


  private

  def book_params
    params.require(:book).permit(:name, :auther, :rating)
  end

end
