class ArtworksController < ApplicationController
  def new
  end

  def create
     # TODO: a bouger dans la methode create du artworks controller
    # pseudo code :
    # - artwork.new avec les params
    # - appel de l'API upload image
    # - mettre a jour l'attribut
    #(file = params[:upload_image][:file]
    #uploaded_file = UploadFileToApi.call(file))
    #   artwork.color_tags_api_file_id = uploaded_file["file_id"]
    # - appel de l'API report
    # - mettre a jour les attributs
    #   number_of_pixel_in_image
    #   width
    #   height
    #   colors
    # - save l'artwork

  end

end
