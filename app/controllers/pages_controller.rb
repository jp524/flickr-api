require 'flickr'

class PagesController < ApplicationController
  def index
    return unless params[:flickr_user_id]

    flickr = Flickr.new ENV['flickr_api_key'], ENV['flickr_shared_secret']

    begin
      @user_photos = flickr.photos.search user_id: params[:flickr_user_id]
    rescue Flickr::FailedResponse => e
      @error_msg = clean_error_msg(e.message)
    end
  end

  private

  def pages_params
    params.permit(:flickr_user_id, :commit)
  end

  def clean_error_msg(msg)
    msg.delete_prefix!("'flickr.photos.search' - ")
    msg.prepend('Error: ')
  end
end
