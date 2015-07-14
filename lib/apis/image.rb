module Image

	def images(list)
		if @images_options.include?(list.to_s)
			make_request("images/#{list}")
		else
			"invalid request"
		end
	end

	def image(id)
		make_request("object-number/#{id}")
	end






end