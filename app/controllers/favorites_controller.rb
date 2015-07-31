class FavoritesController < ApplicationController

  def new
    beer = CraftBeer.new
  end

  def create
    beer = CraftBeer.find(params[:craft_beer_id])
    current_user.craft_beers << beer
    redirect_to current_user
  end

end
