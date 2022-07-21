class BooksController < ApplicationController
  
  def index
    @books = Book.all
    render json: @books
  end

  def new
    @book = current_author.books.new
  end

  def create
    @book = current_author.books.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @book = current_author.books.find(params[:id])
  end

  def edit
    @book = current_author.books.find(params[:id])
  end

  def update
    @book = current_author.books.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end
  def assigntags
    tag = Tag.find(params['tag'][:id])
    book = Book.find_by_id(params['book'][:id])
    Bookstag.find_or_create_by(book_id: book.id, tag_id: tag.id)
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :description)
  end
end
