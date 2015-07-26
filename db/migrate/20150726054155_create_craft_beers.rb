class CreateCraftBeers < ActiveRecord::Migration
  def change
    create_table :craft_beers do |t|
      t.string :name
      t.string :brewery
      t.string :city
      t.string :description

      t.timestamps null: false
    end
  end
end
