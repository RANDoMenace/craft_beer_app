class SecretController < ApplicationController
  def public_info
  end

  def secret
    @beers = CraftBeer.all
  end
end
