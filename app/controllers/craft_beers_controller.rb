class CraftBeersController < ApplicationController
  def index
    @beers = CraftBeer.all
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

  def update
  end

  def show
    @beer = CraftBeer.find(params[:id])
  end

  def edit
  end

  def destroy
  end

   private

    def beer_params
      params.require(:craft_beer).permit(:name, :brewery, :city, :description, :pic_url)
    end
  end
