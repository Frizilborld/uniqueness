class UpvotesController < ApplicationController
  def create
    @artwork = Artwork.find(params[:artwork_id])
    @user = current_user
    @upvote = Upvote.new
    @upvote.artwork = @artwork
    @upvote.user = @user
    if @upvote.save!
      redirect_to request.referer
      flash[:success] = "Your upvote was done"
    else
      redirect_to request.referer
      flash[:alert] = "Failed"
    end
  end

end
