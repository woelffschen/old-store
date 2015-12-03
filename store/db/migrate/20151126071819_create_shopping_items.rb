class CreateShoppingItems < ActiveRecord::Migration
  def change
    create_table :shopping_items do |t|
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
