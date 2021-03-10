class JoinItemCart < ApplicationRecord
  belongs_to :item
  belongs_to :cart

  def total_item
    return self.quantity * self.item.price
  end
end
