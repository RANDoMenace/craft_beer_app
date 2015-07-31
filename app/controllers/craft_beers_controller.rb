class CraftBeersController < ApplicationController
  before_action :authenticate, only: [:edit, :update, :show, :destroy]
  def index
    @beers = CraftBeer.all
  end

  def show
    @beer = CraftBeer.find(params[:id])
  end

  def new
    @beer = CraftBeer.new
  end

  def create
    @beer = CraftBeer.new(beer_params)
    if @beer.save
      redirect_to craft_beers_path
    else
      render 'new'
    end
  end

  def edit
    @beer = CraftBeer.find(params[:id])
  end

  def update
    @beer = CraftBeer.find(params[:id])
    if @beer.update_attributes(beer_params)
      redirect_to @beer
    else
      render 'edit'
    end
  end

  def destroy
    @beer = CraftBeer.find(params[:id])
    @beer.destroy

    redirect_to @beer
  end

   private

    def beer_params
      params.require(:craft_beer).permit(:name, :brewery, :city, :description, :pic_url)
    end
  end
