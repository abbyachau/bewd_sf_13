require 'pry'
require 'pry-byebug'
require 'mechanize'
require 'csv'

#Goal:
   #1) Find apartment listings section of craigslist using the 'mechanize' gem
       #a Use the existing form's 'query', 'min_price' and 'max_price' to trigger queries.
       #b Return the title, url, price and location for each listing
   #2)  Save the results to a CSV file using Ruby's 'csv' library
   #3) Use OOP, DRY and 'Brick By Brick' principles to build your script
       #Using the apartment.rb file to create an instance of each

#sample_apartment_url 'http://sfbay.craiglist.org/search/sfc/apa'



def scrape(url)
	scraper = Mechanize.new #creates a map
	scraper = scraper.history_added = Proc.new { sleep 1.0 } #tells it to sleep for a minute
	scraper.get(url) do |page| #given an endpoint, create a new map with these particular args
		#finding all data within searchform area of view layer
	form = page.form_with(id: 'searchform') do |s| #tells it to look for the unique id searchform
		#assigning new values to query, min_price and max_price
		s['query'] = "Loft" #name
		s['min_price'] = 1000
		s['max_price'] = 6000
		end
		#submitting search request with above values & returning results
		data_search_results(form.submit) #mechanize is passing through all the overrides above 
	end
end

# pinpoint specific html pattern to return
def data_search_results(data) #data is form.submit above. it does not have to match
	results = data.search('p.row') #searching for a class that has p.row in them and returning it. data.search is mechanize thing
	results.each do |listing|
		apartment = create_apartment(listing) #finding the values of the variables price etc
		#csv here
	end
end

def create_apartment(listing)
	price = listing.search('span.price').text
	neighborhood = listing.search('span.pnr').text
	url = listing.css('a').[1].attributes["href"].values #just the endpoint create a complete url
	name = listing.search('span.pl').text.strip
	Apartment.new(price, neighborhood, name, url) #this line does not work yet
	#this needs something that allows you to create a new apartment
end

#takes the create_apartment and create an apartment class which will create an instance of apt that you can use to generate a csv file
# method which takes in a csv
# fix the url and neighbhood name

url = 'https://sfbay.craigslist.org/search/sfc/apa'
scrape(url)
