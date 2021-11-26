module Artworks
  class ComputeScore
    # reload!
    # Artwork.where.not(number_of_pixel_in_image: nil).each { |artwork| Artworks::ComputeScore.call(artwork) } ; nil

    def self.call(artwork)
      new(artwork).call
    end

    def initialize(artwork)
      @artwork = artwork
    end

    def call
      score = pixels_score * 0.5 + color_score * 1.7

      @artwork.update!(score: score)
    end

    private

    def pixels_score
      base_photo_size = 1920 * 1080

      (@artwork.number_of_pixel_in_image.to_f / base_photo_size) * 100
    end

    def color_score
      color_1, color_2 = @artwork.colors

      return color_usage_difference(color_1, color_2) * 0.7 + color_difference(color_1, color_2) * 0.3
    end

    def color_usage_difference(color_1, color_2)
      usage_difference = color_1["percentage"].to_f - color_2["percentage"].to_f
      return 100 - usage_difference
    end

    def color_difference(color_1, color_2)
      diff_ref   = (color_1["red"].to_f   - color_2["red"]).abs
      diff_green = (color_1["green"].to_f - color_2["green"]).abs
      diff_blue  = (color_1["blue"].to_f  - color_2["blue"]).abs

      pctdiff_ref    = diff_ref   / 255
      pctdiff_green  = diff_green / 255
      pctdiff_blue   = diff_blue  / 255

      return (pctdiff_ref + pctdiff_green + pctdiff_blue) / 3 * 100
    end
  end
end
