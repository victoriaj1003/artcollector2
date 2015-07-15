# put a file in lib called XXX.rb ie: rijks.rb


#net/http to get the info
#json
# parse

require "net/http"
require "json"
require_relative "collection"
# require_relative "image"


module Rijksmuseum

	class Client

		attr_accessor :art, :parsed

		# def initialize
		# 	@uri = URI("https://rijksmuseum.nl/api/nl/collection/SK-C-5/tiles?key=fakekey&format=json")
		# 	@image_

		def initialize
			@uri_collection = URI("https://www.rijksmuseum.nl/api/nl/collection?key=fakekey&format=json&type=schilderij&ps&f.normalized32Colors.hex=%20%23367614")
			@parsed = JSON.parse(Net::HTTP.get(@uri_collection))
			@art = @parsed["artObjects"]
		end

		def art
			uri_collection = URI("https://www.rijksmuseum.nl/api/nl/collection?key=fakekey&format=json&type=schilderij&ps&f.normalized32Colors.hex=%20%23367614")
			parsed = JSON.parse(Net::HTTP.get(uri_collection))
			# @art = @parsed["artObjects"]
		end

		# def make_request(endpoint)
		# 	JSON.parse(Net::HTTP.get(@uri_collection + endpoint + ""))
		# end

		# include Image
		# include Collection
	end
end

# response = Rijksmuseum::Client.new




