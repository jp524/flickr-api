require 'flickr'

class PagesController < ApplicationController
  def index
    return unless params[:flickr_user_id]

    flickr = Flickr.new ENV['flickr_api_key'], ENV['flickr_shared_secret']
    @user_photos = flickr.photos.search user_id: params[:flickr_user_id]
  end

  private

  def pages_params
    params.permit(:flickr_user_id, :commit)
  end
end
