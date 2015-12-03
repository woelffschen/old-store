class AddBankAccountIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :bankAccount_id, :integer
  end
end
