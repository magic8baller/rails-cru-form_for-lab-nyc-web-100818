class ArtistsController < ApplicationController

  def index
    #code
    @artists = Artist.all
  end

  def new
    #form => create mew
    @artist = Artist.new
    #code
  end

  def create
    #strong params!
    @artist = Artist.create(artist_params)

    redirect_to
    artist #or, artist_path(artist)
  end

  def show
    @artist = Artist.find(params[:id])
    #code
  end

  def edit
    #form!
    @artist = Artist.find(params[:id])
    #code
  end

  def update
    #code
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
	   params.require(:artist).permit(:name, :bio)
	end

end
