class Item < ApplicationRecord
  has_many :join_item_carts, dependent: :nullify
  has_many :carts, through: :join_item_carts
end
