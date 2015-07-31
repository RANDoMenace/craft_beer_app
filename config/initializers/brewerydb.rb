$brewery_db = BreweryDB::Client.new do |config|
   config.api_key =  ENV['BEER_CRAFT_API']
end
