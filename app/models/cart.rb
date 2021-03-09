class Cart < ApplicationRecord
  has_many :join_item_carts, dependent: :destroy
  has_many :items, through: :join_item_carts

  def add_item(item)
    join_item_cart = join_item_carts.find_by(item: item)

    if join_item_cart
      join_item_cart.quantity += 1
    else
      join_item_cart = join_item_carts.new(item: item)
    end
    join_item_cart
  end
end
