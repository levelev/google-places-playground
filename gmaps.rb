require 'google_places'
require_relative 'key.rb'
require_relative 'cities.rb'

@client = GooglePlaces::Client.new(API_KEY)


@cities.each do |city|
  p "Makler in #{city}"
  @client.spots_by_query(city, :types => 'real_estate_agency').each_with_index do |e, index|
    p "#{index + 1}. #{e.name} - #{e.formatted_address}"
  end
end
