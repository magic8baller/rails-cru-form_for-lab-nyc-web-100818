class SongsController < ApplicationController

  def index
    @songs = Song.all
    #code
  end

  def new
    @song = Song.new
    #code
  end

  def create
    #strong params!
    #@artist = Artist.find(@user.id)
     @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])

  end

  def edit
    #form!
    @song = Song.find(params[:id])
    #code
  end

  def update
    #code
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song
    #song_path(song)
  end

  private

  def song_params
	   params.require(:song).permit(:name, :artist_id, :genre_id)
	end

end
