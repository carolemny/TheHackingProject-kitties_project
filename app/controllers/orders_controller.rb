class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @total = @order.total_order
  end

  def create
  end
end
