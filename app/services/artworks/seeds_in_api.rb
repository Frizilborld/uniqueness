class SeedsInApi
  @artworks = Artwork.all.where(number_of_pixel_in_image: nil)
  @artworks.each do |artwork|
    uploaded_file = UploadFileToApi.call(@artwork[file])
    @artwork.color_tags_api_file_id = uploaded_file["file_id"]

    report = GetColorTags.call(@artwork.color_tags_api_file_id)


    @artwork.number_of_pixel_in_image = report["result"]["number_of_pixel_in_image"]
    @artwork.width  = report["result"]["width"]
    @artwork.height = report["result"]["height"]
    @artwork.colors = report["result"]["colors"]
    @artwork.save!

    score = Artworks::ComputeScore.call(@artwork)
    return score
  end
end
