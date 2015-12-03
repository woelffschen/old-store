class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.decimal :price
      t.integer :colour, default: 0, null: false
      t.integer :size, default: 0, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
