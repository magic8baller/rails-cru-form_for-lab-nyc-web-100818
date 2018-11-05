class GenresController < ApplicationController

  def index
    @genres = Genre.all
    #code
  end

  def new
    @genre = Genre.new
    #code
  end

  def create
    #strong params!
    @genre = Genre.create(genre_params)
    redirect_to genre
    #or genre_path(genre)
  end

  def show
    @genre = Genre.find(params[:id])
    #code
  end

  def edit
    #form!
    @genre = Genre.find(params[:id])
    #code
  end

  def update
    #code
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private

  def genre_params
	   params.require(:genre).permit(:name)
	end

end
