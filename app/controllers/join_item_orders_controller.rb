class JoinItemOrdersController < ApplicationController
  def index
    @join_item_orders = JoinItemOrder.all
  end

  def show
  end

  def create
  end
end
