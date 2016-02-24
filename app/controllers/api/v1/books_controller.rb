class Api::V1::BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def create
    @book = Book.create(title: params[:title], author: params[:author], publisher: params[:publisher], genre: params[:genre], isbn: params[:isbn])
  
    render :show
  end

  def show
    @book = Book.find_by(params[:id])
  end

  def update
    @book = Book.find_by(params[:id])
    @book.update(title: params[:title], author: params[:author], publisher: params[:publisher], genre: params[:genre], isbn: params[:isbn])

    render :show
  end

  def destroy
    @book = Book.find_by(params[:id])
    @book.destory

    render json: {message: "book Destroyed"}
  end


end
