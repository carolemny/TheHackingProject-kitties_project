class CreateJoinItemCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :join_item_carts do |t|
      t.integer :quantity
      t.belongs_to :item
      t.belongs_to :cart
      t.timestamps
    end
  end
end
