class AddArticleIdToShoppingItem < ActiveRecord::Migration
  def change
    add_column :shopping_items, :article_id, :integer
  end
end
