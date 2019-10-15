class YoutubersController < ApplicationController
  def index
    @youtubers = Youtuber.all.page(params[:page])
  end

  def show
    @youtuber = Youtuber.find_by(id: params[:id])
    @micropost = Micropost.new(youtuber_id: params[:id])
    @microposts = Micropost.where(youtuber_id: params[:id])
  end
end
