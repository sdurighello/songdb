class OverviewsController < ApplicationController
  def index
    order_by = params[:order_by] || nil
    @artists = order_by.nil? ? Artist.all.order(:name).reverse_order : Artist.all.order(order_by.to_sym)
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
