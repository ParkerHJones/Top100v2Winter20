class ArtistsController < ApplicationController
  def index
    @artist = Artist.all
   end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save 

    else 
      render :new 
    end 
  end 

  def update @artist = 
    Artist.find(params[:id])
    if @artist.update(artist_params)

    else 
      render :edit
    end 
  end 

  def destroy
    @artist = 
    Artist.find(params[:id])
    @artist.destroy
    send somewhere
    or 
    Artist.find(params[:id]).destroy 
    send somewhere
  end 

  private 
  def artist_params
    params.require(:artist).permit(:name, :rank, :numAlbs)
  end 

  def edit
    @artists = Artist.find(params[:id])
  end
end
