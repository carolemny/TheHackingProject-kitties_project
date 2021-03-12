class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def show
    @order = Order.find(params[:id])
    @total = @order.total_order
  end

  def create
  end
end
