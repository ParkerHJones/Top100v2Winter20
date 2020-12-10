class BillboardsController < ApplicationController
  def index
    @billboard = Billboard.all
   end

  def show
    @billboard = Billboard.find(params[:id])
  end

  def new
    @billboard = Billboard.new
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @Billboard.save 

    else 
      render :new 
    end 
  end 

  def update @billboard = 
    Billboard.find(params[:id])
    if @billboard.update(billboard_params)

    else 
      render :edit
    end 
  end 

  def destroy
    @billboard = 
    Billboard.find(params[:id])
    @billboard.destroy
    send somewhere
    or 
    Billboard.find(params[:id]).destroy 
    send somewhere
  end 

  private 
  def billboard_params
    params.require(:Billboard).permit(:title, :details)
  end 

  def edit
    @billboards = Billboard.find(params[:id])
  end
end
