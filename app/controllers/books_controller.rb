class BooksController < ApplicationController
  include Authenticable
  before_action :authenticate_with_token
  before_action :set_book, only: [:show, :update, :destroy]

  # GET /books
  def index
    @books = Book.by_token(@token).search(params[:term]).all
    render json: @books
  end

  # GET /books/1
  def show
    render json: @book
  end

  # POST /books
  def create
    @book = Book.new(book_params.to_h.merge!({ token: @token}))

    if @book.save
      render json: @book, status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.by_token(@token).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_params
      params.require(:book).permit(:genre, :author, :pages, :grade, :title, :read, :publishing_company_id)
    end
end
