class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
#
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
