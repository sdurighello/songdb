class OverviewsController < ApplicationController
  def index
    @artists = Artist.all
  end
end
