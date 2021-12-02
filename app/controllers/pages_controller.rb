class PagesController < ApplicationController
  before_action :authenticate_user!, only: [ :dashboard ]

  def home
    @artist_of_the_month = User.find_by_name('Raphael Lacoste')
    @artworks = Artwork.where(user: @artist_of_the_month).sample(3)
  end

  def dashboard
     @my_artworks = Artwork.where(user: current_user)
  end

   private

  def list_params
    params.require(:artwork).permit(:name, :artwork_id)
  end

end
