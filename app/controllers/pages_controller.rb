class PagesController < ApplicationController
  def index
    @flickr_user_id = pages_params[:flickr_user_id]
  end

  private

  def pages_params
    params.permit(:flickr_user_id, :commit)
  end
end
