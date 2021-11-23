class Artwork < ApplicationRecord
  belongs_to :user
  has_many :upvotes, dependent: :destroy
  has_many :artwork_prices, dependent: :destroy

  validates :name, presence: true
  validates :marketplace_url, presence: true
end
