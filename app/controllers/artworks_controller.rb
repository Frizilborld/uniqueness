class ArtworksController < ApplicationController
  def index
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(params[:name][:description][:photo])
    photo = params[:upload_image][:photo]
    @artwork.call(photo)
    uploaded_file = UploadFileToApi.call(photo)
    @artwork.color_tags_api_file_id = uploaded_file["file_id"]
      # - appel de l'API report
      # - mettre a jour les attributs
      #   number_of_pixel_in_image
      #   width
      #   height
      #   colors
    @artwork.save

  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :description, :photo)
  end
end
