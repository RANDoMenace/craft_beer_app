class StaticPagesController < ApplicationController

  def index
     @beers = CraftBeer.all
  end

  def new
  end

  def edit
  end

  def show
  end

end
