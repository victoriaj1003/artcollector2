class ArtworksController < ApplicationController
  def index
    @artwork = RijksmuseumClient.art
  end

  def show
    @artwork = Artwork.find(params[:rijks_id])
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      redirect_to @artwork, notice: "New artwork created"
    else
      render :new
    end
	end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    if @artwork.update(artwork_params)
      redirect_to @artwork, notice: "Artwork updated"
    else
      render :edit
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to artworks_path, notice: "Artwork deleted."
  end

	private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

	def artwork_params
	  params.require(:artwork).permit(:avatar, :source_url, :title, :artist, :year_created, :origin_location, :lat, :lng)
	end


end
