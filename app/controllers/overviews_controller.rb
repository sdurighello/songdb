class OverviewsController < ApplicationController
  def index
    @artists = Artist.all.order(:name).reverse_order
  end
  def order_by_name
    @artists = Artist.all.order(:name)
    render :index
  end
  def order_by_created_at
    @artists = Artist.all.order(:created_at)
    render :index
  end
end
