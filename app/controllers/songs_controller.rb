class SongsController < ApplicationController
  def index
    @song = Song.all
   end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @Song = Song.new(Song_params)
    if @song.save 

    else 
      render :new 
    end 
  end 

  def update @song = 
    Song.find(params[:id])
    if @song.update(song_params)

    else 
      render :edit
    end 
  end 

  def destroy
    @song = 
    Song.find(params[:id])
    @song.destroy
    send somewhere
    or 
    Song.find(params[:id]).destroy 
    send somewhere
  end 

  private 
  def song_params
    params.require(:Song).permit(:title, :album, :genre, :length)
  end 

  def edit
    @songs = Song.find(params[:id])
  end
end