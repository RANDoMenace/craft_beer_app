# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CraftBeer.destroy_all
User.destroy_all

u1 = User.create(
  name =  "beerBro",
  email = "beerBro@email.com",
  password = "abc123",
  password_confirmation = "abc123"
  )

u1.craft_beers << CraftBeer.create(
  name = "Brooklyn Brewery Lager",
  brewery = "Brooklyn Brewery",
  city = "New York City",
  description = "Consider this the antithesis to all of the super-hopped IPAs you’ll find on this list. Brooklyn’s Vienna-style lager is mellow, subtle, biscuity but not bland.",
  pic_url = "http://cdn.pastemagazine.com/www/blogs/lists/brooklyn_lager_label.jpg"
  )

u1.craft_beers << CraftBeer.create(
  name: "Dale's Pale Ale",
  brewery: "Oskar Blues",
  city: "Lyons, CO",
  description = "Look, this is the beer that started the can-revolution. If it weren’t for Dale’s, we wouldn’t have Bell’s in a can.",
   pic_url = "http://cdn.pastemagazine.com/www/blogs/lists/oskar-blues-dales-pale-ale.png"
  )
