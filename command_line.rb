require 'google_places'
require_relative 'key.rb'
require_relative 'll-companies.rb'

@client = GooglePlaces::Client.new(API_KEY)

# p 'Input query...'

# query = gets.chomp

# @client.spots_by_query('Pizza near Miami Florida', detail: true).each do |spot|
#   p spot
# end

# my_company = @companies.sample
# p my_company
# p @client.spots_by_query(my_company, detail: true)



@companies.each do |company|
  results = @client.spots_by_query(company, detail: true)

  # p results.first
  if results.first
    p "#{company}; #{results.first.international_phone_number}"
  else
    p company
  end
end



