require 'pry'
require 'pry-byebug'

#create an apartment class using OOP principles

class Apartment
	
	def initialize(query, min_price, max_price)
		@query = query
		@min_price = min_price
		@max_price = max_price
	end

	def price
		@price
	end

	def neighborhood
		@neighborhood
	end

	def name
		@name
	end

	def url
	@url
	end
end

