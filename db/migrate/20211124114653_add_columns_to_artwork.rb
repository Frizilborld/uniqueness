class AddColumnsToArtwork < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :color_tags_api_file_id, :integer
    add_column :artworks, :height, :integer
    add_column :artworks, :width, :integer
    add_column :artworks, :number_of_pixel_in_image, :integer
    add_column :artworks, :colors, :json
  end
end
