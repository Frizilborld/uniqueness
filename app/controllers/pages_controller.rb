class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def test_upload #suprimmer la methode une fois le contenu traité
    # TODO: a bouger dans la methode create du artworks controller
    # pseudo code :
    # - artwork.new avec les params
    # - appel de l'API upload image
    # - mettre a jour l'attribut
    #   artwork.color_tags_api_file_id = uploaded_file["file_id"]
    # - appel de l'API report
    # - mettre a jour les attributs
    #   number_of_pixel_in_image
    #   width
    #   height
    #   colors
    # - save l'artwork

    # +coller les deux dernières lignes
    #file = params[:upload_image][:file]
    #uploaded_file = UploadFileToApi.call(file)
  end
end
