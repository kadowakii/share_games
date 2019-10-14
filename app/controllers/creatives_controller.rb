class CreativesController < ApplicationController
  layout "creative"

  def index
    @youtubers = Youtuber.limit(6)
  end

  def contact
  end

  def privacy_policy
  end
end
