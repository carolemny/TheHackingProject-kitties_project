class JoinItemCartsController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def destroy
    join_item_cart = JoinItemCart.find(params[:id])
    join_item_cart.destroy
    redirect_to cart_path(@cart.id)
  end

  def update
    join_item_cart = JoinItemCart.find(params[:id])
    if join_item_cart.quantity > 1
      quantity = (join_item_cart.quantity - 1)
      join_item_cart.update(quantity: quantity)
    else
      flash[:notice] = "Vous êtes à la quantité minimale, vous devez supprimer."
    end
    redirect_to cart_path(@cart.id)
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
