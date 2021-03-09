class DeleteAttQuantity < ActiveRecord::Migration[5.2]
  def change
    remove_column :join_item_carts, :quantity, :integer
  end
end
