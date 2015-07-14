class WelcomeController < ApplicationController
  def index
  end

  def test
  	@art = RijksmuseumClient.art
  end
end
