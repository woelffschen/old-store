class ChangeColumnFromArticleIdToCategoryId < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.remove :article_id
      t.integer :category_id
    end
  end
end
