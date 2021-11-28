require 'open-uri'
# Artwork.where.not(number_of_pixel_in_image: nil).pluck(:name, :height, :width, :number_of_pixel_in_image, :colors, :score)

module Artworks
  class SeedsInApi
    def self.call(artworks = nil)
# [54, 56, 42, 43, 44, 46]
      artworks ||= Artwork.where(number_of_pixel_in_image: nil)

      artworks.each do |artwork|
        puts "artwork: #{artwork.id}"

        photo_data = URI.open(artwork.photo.service_url).read

        photo_file = Tempfile.new(['photo', '.jpg'], binmode: true)

        puts photo_file.path

        photo_file.write(photo_data)
        photo_file.rewind

        binding.pry

        uploaded_file = UploadFileToApi.call(photo_file)
        artwork.color_tags_api_file_id = uploaded_file["file_id"]

        report = GetColorTags.call(artwork.color_tags_api_file_id)

        artwork.number_of_pixel_in_image = report["result"]["number_of_pixel_in_image"]
        artwork.width  = report["result"]["width"]
        artwork.height = report["result"]["height"]
        artwork.colors = report["result"]["colors"]
        artwork.save!

        Artworks::ComputeScore.call(artwork)
      end
    end
  end
end
