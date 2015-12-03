class AddShoppingListIdToShoppingCart < ActiveRecord::Migration
  def change
    add_column :shopping_carts, :shoppingList_id, :integer
  end
end
