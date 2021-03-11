class CreateJoinItemOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :join_item_orders do |t|
      t.decimal :price_order 
      t.integer :quantity
      t.belongs_to :item
      t.belongs_to :order
      t.timestamps
    end
  end
end
