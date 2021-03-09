class JoinItemCartsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]
  #before_action :set_join_item_cart, only: [:show, :edit, :update, :destroy]
  def index
    @join_item_carts = JoinItemCart.all
  end

  def show
  end

  def new
    @join_item_cart = JoinItemCart.new
  end

  def edit
  end

  def create
    item = Item.find(params[:item_id])
    @join_item_cart = @cart.add_item(item)

    respond_to do |format|
      if @join_item_cart.save
        format.html { redirect_to @join_item_cart.cart }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
end
