# class RijksmuseumClient

# 	attr_accessor :art

# 	# def initialize
# 	# 	@uri_collection = URI("https://www.rijksmuseum.nl/api/nl/collection?key=V5iaRD9k&format=json&type=schilderij&ps&f.normalized32Colors.hex=%20%23367614")
# 	# 	@parsed = JSON.parse(Net::HTTP.get(@uri_collection))
# 	# 	@art = @parsed["artObjects"]
# 	# end

# 	def self.art
# 		uri_collection = URI("https://www.rijksmuseum.nl/api/nl/collection?key=V5iaRD9k&format=json&type=schilderij&f.normalized32Colors.hex=%20%23367614&tiles&tiles")
# 		response = JSON.parse(Net::HTTP.get(uri_collection))

# 		@event = response["artObjects"]

# 		@event.map do |art|
# 			# find the artwork by it's id
# 			@artwork = Artwork.find_by(rijks_id: art["artObjects"][:id])
# 			# artwork = Artwork.find_by(?)
# 			# unless artwork
# 				unless @artwork
# 					@artwork = Artwork.create(
# 						rijks_id: artObjects['id'],
# 						source_url: artObjects['webImage']['url'],
#     				title: artObjects['title'],
# 						artist: artObjects['principalOrFirstMaker'],
#     				origin_location: artObjects['productionPlaces']

# 						)
# 					# artwork = Artwork.create()
# 			# end
# 			end
# 			result = {artwork: @artwork}
# 			#	artwork
# 		end
# 	end

# # returned info from api
# # 	 "artObjects"=>
# # [{"links"=>{"self"=>"https://www.rijksmuseum.nl/api/nl/collection/SK-C-5", "web"=>"https://www.rijksmuseum.nl/nl/collectie/SK-C-5"},
# #  "id"=>"nl-SK-C-5",
# #  "objectNumber"=>"SK-C-5",
# #  "title"=>"Schutters van wijk II onder leiding van kapitein Frans Banninck Cocq, bekend als de ‘Nachtwacht’",
# #  "hasImage"=>true,
# #  "principalOrFirstMaker"=>"Rembrandt Harmensz. van Rijn",
# #  "longTitle"=>"Schutters van wijk II onder leiding van kapitein Frans Banninck Cocq, bekend als de ‘Nachtwacht’, Rembrandt Harmensz. van Rijn, 1642",
# #  "showImage"=>true,
# #  "permitDownload"=>true,
# #  "webImage"=>{"guid"=>"3ae88fe0-021c-41ae-a4ce-cc70b7bc6295",
# #  "offsetPercentageX"=>50,
# #  "offsetPercentageY"=>100,
# #  "width"=>2500,
# #  "height"=>2034,
# #  "url"=>"http://lh6.ggpht.com/ZYWwML8mVFonXzbmg2rQBulNuCSr3rAaf5ppNcUc2Id8qXqudDL1NSYxaqjEXyDLSbeNFzOHRu0H7rbIws0Js4d7s_M=s0"},
# #  "headerImage"=>{"guid"=>"29a2a516-f1d2-4713-9cbd-7a4458026057",
# #  "offsetPercentageX"=>50,
# #  "offsetPercentageY"=>50,
# #  "width"=>1920,
# #  "height"=>460,
# #  "url"=>"http://lh3.ggpht.com/rvCc4t2BWHAgDlzyiPlp1sBhc8ju0aSsu2HxR8rN_ZVPBcujP94pukbmF3Blmhi-GW5cx1_YsYYCDMTPePocwM6d2vk=s0"},
# #  "productionPlaces"=>["Amsterdam"]},

# 	def search

# 	end


# end