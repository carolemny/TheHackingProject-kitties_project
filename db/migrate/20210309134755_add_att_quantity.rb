class AddAttQuantity < ActiveRecord::Migration[5.2]
  def change
    add_column :join_item_carts, :quantity, :integer, :default => 1
  end
end
