class Item < ApplicationRecord
  has_many :join_item_carts
  has_many :carts, through: :join_item_carts
end
