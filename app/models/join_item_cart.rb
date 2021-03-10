class JoinItemCart < ApplicationRecord
  belongs_to :item
  belongs_to :cart

  def total_item
    item = Item.find(self.item_id)
    total_item = self.quantity * item.price
    return total_item
  end
end
