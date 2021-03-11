class Item < ApplicationRecord
  has_many :join_item_carts, dependent: :nullify
  has_many :carts, through: :join_item_carts
  has_one_attached :picture
  has_many :join_item_orders
  has_many :orders, through: :join_item_orders
  validates :picture, presence: true 
end
