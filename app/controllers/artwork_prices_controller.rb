class ArtworkPricesController < ApplicationController
  def create
    @artwork = Artwork.find(params[:artwork_id])
    @artwork_price = ArtworkPrice.find_or_initialize_by(
      artwork: @artwork,
      user: current_user
    )
    unless @artwork_price.persisted?
      @artwork_price.assign_attributes(artwork_price_params)
    end

    if @artwork_price.save!
      redirect_to request.referer
        flash[:success] = "Your price was done"
      else
        redirect_to request.referer
        flash[:alert] = "Failed"
      end
    end

    private

    def artwork_price_params
    params.require(:artwork_price).permit(:price_estimation)
    end
end
