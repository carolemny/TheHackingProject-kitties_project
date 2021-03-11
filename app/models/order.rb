class Order < ApplicationRecord
  belongs_to :user
  has_many :join_item_orders
  has_many :items, through: :join_item_orders

  def add_item_to_order(my_cart)
    my_cart.join_item_carts.each do |join_item_cart|
      price_order = join_item_cart.item.price
      quantity = join_item_cart.quantity
      subtotal = join_item_cart.quantity * join_item_cart.item.price
      JoinItemOrder.create(item_id: join_item_cart.item.id, order_id: self.id, price_order: price_order, quantity: quantity)
    end
  end

  def total_order
    total = 0
    self.join_item_orders.each do |join_item_order|
      subtotal = join_item_order.item.price * join_item_order.quantity
      total = total + subtotal
    end
    return total
  end
end
