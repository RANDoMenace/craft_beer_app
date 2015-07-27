class BeersController < ApplicationController
  def index
    @beers = CraftBeer.all
    @users = User.all
  end

  def new
  end

  def show
    @beer = CraftBeer.find(params[:id])
  end

  def edit
  end
end
