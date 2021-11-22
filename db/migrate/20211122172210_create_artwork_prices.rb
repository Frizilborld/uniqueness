class CreateArtworkPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :artwork_prices do |t|
      t.integer :price_estimation
      t.references :user, null: false, foreign_key: true
      t.references :artwork, null: false, foreign_key: true

      t.timestamps
    end
  end
end
