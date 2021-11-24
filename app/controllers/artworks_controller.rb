class ArtworksController < ApplicationController
  def new
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

end
