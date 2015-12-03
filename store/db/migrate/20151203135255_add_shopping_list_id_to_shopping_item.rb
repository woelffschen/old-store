class AddShoppingListIdToShoppingItem < ActiveRecord::Migration
  def change
    add_column :shopping_items, :shoppingList_id, :integer
  end
end
