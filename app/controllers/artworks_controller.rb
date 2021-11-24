class ArtworksController < ApplicationController
  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)

    uploaded_file = UploadFileToApi.call(artwork_params[:photo])
    raise
    @artwork.color_tags_api_file_id = uploaded_file["file_id"]

    report = GetColorTags.call
    @artwork.number_of_pixel_in_image = report["process"]
    @artwork.width = report["process"]
    @artwork.height = report["process"]
    @artwork.colors = report["process"]
    raise
    @artwork.save
    redirect_to artwork_path(@artwork)
  end

  private

  def artwork_params
    params.require(:artwork).permit(:photo, :name, :description)
  end

end
