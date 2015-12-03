class AddShoppingListIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :shoppingList_id, :integer
  end
end
