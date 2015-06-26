module ArtworksHelper

	 def content(c)
		Shortcode.process(c)
	 end

	 def content_html(c)
    raw content(c)
   end

end

