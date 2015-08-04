class AddUserToCraftBeers < ActiveRecord::Migration
  def change
    add_reference :craft_beers, :user, index: true, foreign_key: true
  end
end
