class ChangeColorTagsApiIdTypeForArtworks < ActiveRecord::Migration[6.0]
  def change
    change_column :artworks, :color_tags_api_file_id, :string
  end
end
