class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :iban
      t.string :bic
      t.string :owner

      t.timestamps null: false
    end
  end
end
