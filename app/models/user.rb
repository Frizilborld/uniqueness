class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :artworks, dependent: :destroy
  has_many :artwork_prices, dependent: :destroy
  has_many :upvotes

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
