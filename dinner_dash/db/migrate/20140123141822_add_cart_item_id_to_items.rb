class AddCartItemIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :cart_item_id, :integer
    add_index :items, :cart_item_id
  end
end
