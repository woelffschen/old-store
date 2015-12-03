class CreateShippingMethods < ActiveRecord::Migration
  def change
    create_table :shipping_methods do |t|
      t.string :logistics
      t.decimal :price

      t.timestamps null: false
    end
  end
end
