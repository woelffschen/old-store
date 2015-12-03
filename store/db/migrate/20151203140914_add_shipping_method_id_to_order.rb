class AddShippingMethodIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :shippingMethod_id, :integer
  end
end
