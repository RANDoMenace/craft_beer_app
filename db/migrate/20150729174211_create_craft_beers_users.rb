class CreateCraftBeersUsers < ActiveRecord::Migration
  def change
    create_table :craft_beers_users do |t|
      t.integer :craft_beer_id
      t.integer :user_id
    end
  end
end
