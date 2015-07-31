class WelcomeController < ApplicationController

  def index
    @beers = $brewery_db.beers.random
  end
end
