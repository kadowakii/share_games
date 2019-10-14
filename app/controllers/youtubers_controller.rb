class YoutubersController < ApplicationController
  def index
    @youtubers = Youtuber.all.page(params[:page])
  end

  def show
    @micropost = current_user.microposts.build if user_signed_in?	
    @youtuber = Youtuber.find_by(id: params[:id])
  end
end
