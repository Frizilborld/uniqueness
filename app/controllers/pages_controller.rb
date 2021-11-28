class PagesController < ApplicationController
  before_action :authenticate_user!, only: [ :dashboard ]

  def home
    @artworks = Artwork.all
  end

  def dashboard
     @my_artworks = Artwork.where(user: current_user)
  end

   private

  def list_params
    params.require(:artwork).permit(:name, :artwork_id)
  end

end
