class YoutubersController < ApplicationController
  def index
    @youtubers = Youtuber.all.page(params[:page])
  end

  def show
    @youtuber = Youtuber.find_by(id: params[:id])
  end
end
