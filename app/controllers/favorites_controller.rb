class FavoritesController < ApplicationController
  def create
    beer = CraftBeer.find(params[:id])
    current_user.craft_beers << beer
  end
end
