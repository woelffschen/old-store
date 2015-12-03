class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :billPayed
      t.boolean :shipped

      t.timestamps null: false
    end
  end
end
