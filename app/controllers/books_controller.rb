class BooksController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notise] = "You have created book successfully."
      redirect_to books_path
    else
      render :index
    end
  end

  def index
  #@book = Book.page(params[:page])
   @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find([:id])
  end

  def update
   @book = Book.find(params[:id])
   if @book.update(book_params)
     flash[:notice] = "You have updated book successfully."
     redirect_to books_path
   else
     render :index
   end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

    private

    def book_params
      params.require(:book).permit(:title, :opinion, :image)
    end

end
