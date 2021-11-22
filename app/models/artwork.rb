class Artwork < ApplicationRecord
  belongs_to :user
  has_many :upvotes
  has_many :artwork_prices


end
