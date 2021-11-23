class ArtworkPrice < ApplicationRecord
  belongs_to :user
  belongs_to :artwork

  validates :price_estimation, presence: true
end
