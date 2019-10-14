class YoutubersController < ApplicationController
  def show
      @youtuber = Youtuber.find_by(id: params[:id])
  end
end
