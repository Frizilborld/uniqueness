class ArtworksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    if params[:query].present?
      @artworks = Artwork.joins(:user).where('artworks.name ILIKE :query OR users.name ILIKE :query', query: "%#{params[:query]}%" )
    else
      @artworks = Artwork.all
    end
  end

  def debug_score
    @artworks = Artwork.where.not(number_of_pixel_in_image: nil)
  end

  def show
    @artwork = Artwork.find(params[:id])
    @artwork_price = ArtworkPrice.new
  end



  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user

    if artwork_params[:photo].present?
      uploaded_file = UploadFileToApi.call(artwork_params[:photo])
      @artwork.color_tags_api_file_id = uploaded_file["file_id"]
      report = GetColorTags.call(@artwork.color_tags_api_file_id)
      @artwork.number_of_pixel_in_image = report["result"]["number_of_pixel_in_image"]
      @artwork.width  = report["result"]["width"]
      @artwork.height = report["result"]["height"]
      @artwork.colors = report["result"]["colors"]
    end

    if @artwork.save
      Artworks::ComputeScore.call(@artwork)
      redirect_to artwork_path(@artwork)
    else
      render :new
    end
  end

  def update
    @artwork = Artwork.find(params[:id])
    @artwork.update(artwork_params)
    redirect_to artwork_path(@artwork)

  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :description, :photo, :marketplace_url)
  end
end
